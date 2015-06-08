class AddInvalidAddressColumnToSpreeAddresses < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :invalid_address, :boolean, default: false
  end
end
