class AddPreferencesToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :preferences, :text
  end
end
