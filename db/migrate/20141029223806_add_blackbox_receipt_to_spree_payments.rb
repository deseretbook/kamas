class AddBlackboxReceiptToSpreePayments < ActiveRecord::Migration
  def change
    add_column :spree_payments, :blackbox_receipt, :integer, limit: 8, index: true
  end
end
