class AddBookAttributesToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :subtitle, :string
    add_column :spree_products, :pub_year, :integer
    add_column :spree_products, :back_cover, :text
    add_column :spree_products, :editorial, :text
    add_column :spree_products, :additional_details, :text
  end
end
