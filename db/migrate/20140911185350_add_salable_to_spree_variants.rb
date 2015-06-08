class AddSalableToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :salable, :boolean
  end
end
