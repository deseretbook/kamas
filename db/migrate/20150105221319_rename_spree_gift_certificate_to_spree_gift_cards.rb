class RenameSpreeGiftCertificateToSpreeGiftCards < ActiveRecord::Migration
  def change
    rename_table :spree_gift_certificates, :spree_gift_cards
  end
end
