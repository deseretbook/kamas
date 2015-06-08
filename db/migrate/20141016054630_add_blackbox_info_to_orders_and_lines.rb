class AddBlackboxInfoToOrdersAndLines < ActiveRecord::Migration
  def change
    add_column :spree_orders, :blackbox_message, :string
    add_column :spree_orders, :blackbox_reference, :string

    add_column :spree_line_items, :blackbox_state, :string
    add_column :spree_line_items, :blackbox_message, :string
    add_column :spree_line_items, :blackbox_reference, :string
  end
end
