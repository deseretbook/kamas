# This migration comes from spree_platinum_points (originally 20140708220831)
class CreatePlatinumPointsTransaction < ActiveRecord::Migration
  def change
    create_table :platinum_points_transactions do |t|
      t.belongs_to :order
      t.integer :points

      t.timestamps
    end
    add_index :platinum_points_transactions, :order_id
  end
end
