# This migration comes from spree_platinum_points (originally 20140707220831)
class AddUsePointsToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :use_points, :boolean, default: true
    add_column :spree_variants, :earn_points, :boolean, default: true
  end
end

