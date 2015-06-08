class AddBlackboxStateToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :blackbox_state, :string
  end
end
