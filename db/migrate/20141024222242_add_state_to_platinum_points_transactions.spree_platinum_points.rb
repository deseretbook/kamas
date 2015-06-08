# This migration comes from spree_platinum_points (originally 20140716220831)
class AddStateToPlatinumPointsTransactions < ActiveRecord::Migration
  def change
    add_column :platinum_points_transactions, :state, :string
  end
end
