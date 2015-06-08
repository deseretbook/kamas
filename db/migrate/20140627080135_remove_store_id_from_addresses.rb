class RemoveStoreIdFromAddresses < ActiveRecord::Migration
  def change
    remove_column :spree_addresses, :store_id, :integer
    remove_column :stores, :address_id, :integer
  end
end
