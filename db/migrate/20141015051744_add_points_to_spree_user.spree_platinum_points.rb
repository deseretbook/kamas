# This migration comes from spree_platinum_points (originally 20140726220831)
class AddPointsToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :points, :integer, default: 0
    add_column :spree_users, :is_platinum, :boolean, default: false
  end
end
