class AddIsStandardColumnToSpreeShippingMethods < ActiveRecord::Migration
  def change
  	add_column :spree_shipping_methods, :is_standard, :boolean, default: false
  end
end
