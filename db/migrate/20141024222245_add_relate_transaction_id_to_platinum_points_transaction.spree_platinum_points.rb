# This migration comes from spree_platinum_points (originally 20140805141624)
class AddRelateTransactionIdToPlatinumPointsTransaction < ActiveRecord::Migration
  def change
    add_column :platinum_points_transactions, :relate_transaction_id, :integer
  end
end
