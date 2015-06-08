# This migration comes from spree_platinum_points (originally 20140805134291)
class RemovePointsFromSpreeUser < ActiveRecord::Migration
  def change
    remove_column :spree_users, :points
    remove_column :spree_users, :is_platinum
    remove_column :spree_users, :platinum_expires_at
  end
end
