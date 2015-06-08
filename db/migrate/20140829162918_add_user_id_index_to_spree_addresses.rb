class AddUserIdIndexToSpreeAddresses < ActiveRecord::Migration
  def change
    add_index :spree_addresses, :user_id
  end
end
