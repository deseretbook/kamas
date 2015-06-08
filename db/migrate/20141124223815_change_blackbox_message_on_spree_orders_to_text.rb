class ChangeBlackboxMessageOnSpreeOrdersToText < ActiveRecord::Migration
  def up
    change_column :spree_orders, :blackbox_message, :text
    change_column :spree_line_items, :blackbox_message, :text
  end

  def down
    change_column :spree_orders, :blackbox_message, :string
    change_column :spree_line_items, :blackbox_message, :string
  end
end
