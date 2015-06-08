class AddPopularityToVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :popularity, :integer, default: 0
  end
end
