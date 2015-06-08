# This migration comes from spree_platinum_points (originally 20141024212854)
class SwitchPlatinumPointsTransactionToPolymorphicSource < ActiveRecord::Migration
  def up
    change_table :platinum_points_transactions do |t|
      t.references :source, polymorphic: true, index: true, null: false
      t.references :platinum_membership, index: true, null: false
    end

    PlatinumPointsTransaction.find_each do |t|
      t.update_attributes(source_id: t.order_id, source_type: 'Spree::Order')
    end

    remove_column :platinum_points_transactions, :order_id
  end

  def down
    change_table :platinum_points_transactions do |t|
      t.belongs_to :order, index: true
    end

    PlatinumPointsTransaction.find_each do |t|
      t.update_attributes(order_id: t.source_id) if t.source_type == 'Spree::Order'
    end

    remove_reference :platinum_points_transactions, :source, polymorphic: true
    remove_reference :platinum_points_transactions, :platinum_membership
  end
end
