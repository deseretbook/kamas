class AddDigitalToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :digital, :boolean
  end
end
