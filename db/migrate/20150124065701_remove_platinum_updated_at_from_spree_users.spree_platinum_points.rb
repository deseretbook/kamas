# This migration comes from spree_platinum_points (originally 20150124062837)
class RemovePlatinumUpdatedAtFromSpreeUsers < ActiveRecord::Migration
  def change
    remove_column :spree_users, :platinum_updated_at
  end
end
