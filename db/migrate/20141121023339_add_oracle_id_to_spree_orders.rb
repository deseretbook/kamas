class AddOracleIdToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :oracle_id, :integer, limit: 8
  end
end
