class AddAttributesToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :isbn, :string
    add_column :spree_variants, :upc, :string
    add_column :spree_variants, :isbn13, :string
    add_column :spree_variants, :item_type, :string
    add_column :spree_variants, :status, :string
    add_column :spree_variants, :first_feed_on, :datetime
    add_column :spree_variants, :last_feed_on, :datetime
    add_column :spree_variants, :last_stock_date, :datetime
    add_column :spree_variants, :resource_id, :string
  end
end
