class AddUniqueConstraintToBlackboxReference < ActiveRecord::Migration
  def change
    add_index :spree_shipments, [:blackbox_reference], name: 'index_spree_shipments_on_blackbox_reference', unique: true
    add_index :spree_orders, [:blackbox_reference], name: 'index_spree_orders_on_blackbox_reference', unique: true
    add_index :spree_line_items, [:blackbox_reference], name: 'index_spree_line_items_on_blackbox_reference', unique: true
  end
end
