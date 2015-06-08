class AddHideToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :hide, :boolean
  end
end
