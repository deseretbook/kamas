class AddPreferencesToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :preferences, :text
  end
end
