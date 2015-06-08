class AddStoreIdToSpreeAddresses < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :store_id, :integer
  end
end
