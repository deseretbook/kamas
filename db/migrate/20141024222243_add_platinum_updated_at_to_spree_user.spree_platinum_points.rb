# This migration comes from spree_platinum_points (originally 20140726231564)
class AddPlatinumUpdatedAtToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :platinum_updated_at, :datetime, default: Time.now
  end
end
