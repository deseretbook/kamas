class AddFieldToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :msrp, :decimal
  end
end
