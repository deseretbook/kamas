class AddPreferencesToSpreeLineItems < ActiveRecord::Migration
  def change
    add_column :spree_line_items, :preferences, :text
  end
end
