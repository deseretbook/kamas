# This migration comes from spree_platinum_points (originally 20140805120831)
class CreatePlatinumMembership < ActiveRecord::Migration
  def change
    create_table :platinum_memberships do |t|
      t.belongs_to :user
      t.integer :balance, default: 0
      t.datetime :expires_at

      t.timestamps
    end
    add_index :platinum_memberships, :user_id
  end
end

