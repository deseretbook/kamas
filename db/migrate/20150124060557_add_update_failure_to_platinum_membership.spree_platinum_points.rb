# This migration comes from spree_platinum_points (originally 20150123233549)
class AddUpdateFailureToPlatinumMembership < ActiveRecord::Migration
  def change
    add_column :platinum_memberships, :last_update_failed, :boolean, default: false
  end
end
