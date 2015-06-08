class AddStateIndexesToOrders < ActiveRecord::Migration
  def change
    add_index :spree_orders, [:state, :blackbox_state, :updated_at], name: 'index_spree_orders_state_updated'
  end
end
