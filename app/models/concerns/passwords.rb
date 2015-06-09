module Passwords
  extend ActiveSupport::Concern

  included do
    devise encryptor: :nibley
  end

  # A devise-encryptable Encryptor which uses scrypt for new passwords,
  # SHA1-in-scrypt for migrated passwords, and SHA1 for legacy passwords.
  # These hashes will not be compatible with the devise-scrypt gem.
  # TODO: Remove bare SHA1 support after all passwords are migrated.
  class ::Devise::Encryptable::Encryptors::Nibley < ::Devise::Encryptable::Encryptors::Base
    # Returns 'scrypt' (scrypt hashes include their own salt).
    def self.salt(stretches)
      'scrypt'
    end

    # Returns the result of NibleyPassword.scrypt on the +password+.
    # Ignores +stretches+, +salt+, and +pepper+.
    def self.digest(password, stretches, salt, pepper)
      NibleyPasswords.scrypt(password)
    end

    # Compares the plaintext +password+ to the +encrypted_password+.  Uses
    # +salt+ to detect the type of password hash.  Ignores +stretches+.
    def self.compare(encrypted_password, password, stretches, salt, pepper)
      case salt
      when 'scrypt'
        # New scrypt password
        crypted = SCrypt::Password.new(encrypted_password)
        return crypted == password # SCrypt overrides the == operator

      when /^migrated/
        # Migrated scrypt-on-SHA1 password
        crypted = SCrypt::Password.new(encrypted_password)
        legacy = NibleyPasswords.legacy_digest(password, salt.split('migrated', 2).last)
        if crypted == legacy
          return true, :migrated
        else
          return false
        end

      when '', nil
        # No salt (doesn't occur in the legacy data)
        return false

      else
        # Legacy password
        # TODO: Remove this code when SHA1 passwords have been migrated.
        BlackBox.log.warn "Warning: Legacy password detected (look for salt #{salt}, hash #{encrypted_password})"
        if encrypted_password == NibleyPasswords.legacy_digest(password, salt)
          return true, :legacy
        else
          return false
        end
      end
    end
  end

  # Generates and saves an scrypt cost string in SCrypt::Engine::DEFAULTS.
  def self.calibrate
    # This doesn't deal with variations in number of cost digits, but should
    # work fine if most of the results are the same.
    cost = (1..10).to_a.map!{
      sleep 0.08 + rand * 0.05 # Just to try to dodge any intermittent system load
      SCrypt::Engine.calibrate
    }
    cost.sort!
    cost = cost[cost.length / 2]

    SCrypt::Engine::DEFAULTS[:cost] = cost
  end

  # Returns an scrypt hash of the +password+, which must be a non-empty String.
  def self.scrypt(password)
    raise 'No password given' unless password.is_a?(String) && password.length > 0
    SCrypt::Password.create(password)
  end

  # Returns the legacy SHA1 hash of the +password+ and +salt+.  Ignores
  # +stretches+ and +pepper+.  Use only within migrated passwords, never for
  # direct storage.
  def self.legacy_digest(password, salt)
    Digest::SHA1.hexdigest("#{password}hwarang#{salt}")
  end

  # Migrates the user's legacy password to a migrated scrypt-on-SHA1 password.
  # Does nothing if the current password is not a legacy password.
  def migrate_legacy_password!
    if encrypted_password.blank? || password_salt.blank? ||
        password_salt.start_with?('migrated') || password_salt.start_with?('scrypt')
      return
    end

    update_columns(
      encrypted_password: NibleyPasswords.scrypt(encrypted_password),
      password_salt: "migrated#{password_salt}"
    )
  end

  # Returns true if the given plaintext +password+ matches this user's
  # password, false otherwise.  If the user has a migrated or legacy password
  # hash, their password will be re-saved using the new scrypt hash.
  def valid_password?(password)
    return false if password.blank? || encrypted_password.blank?

    result, type = encryptor_class.compare(encrypted_password, password, self.class.stretches, password_salt, self.class.pepper)
    if result && type == :migrated || type == :legacy
      BlackBox.log.info "Migrating password for user #{id} from #{type.inspect}"
      update_columns(
        encrypted_password: NibleyPasswords.scrypt(password),
        password_salt: 'scrypt'
      )
    end

    result
  end

  # Returns the scrypt salt if present, or the password_salt column otherwise.
  # This method is used by Devise for user session management, so it seems like
  # it would be bad for every user to have 'scrypt' as their authenticatable
  # salt.
  def authenticatable_salt
    if password_salt == 'scrypt' || password_salt.start_with?('migrated')
      salt = encrypted_password.try(:split, '$').try(:[], 3)
    end

    salt || password_salt
  end
end

