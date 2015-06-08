class AddItunesButtonToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :itunes_button, :text
  end
end

