class AddVerifiedAtToSpreeAddresses < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :verified_at, :datetime
  end
end
