class AddLegacyIdToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :legacy_id, :integer
  end
end
