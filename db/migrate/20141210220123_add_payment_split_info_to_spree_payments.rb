class AddPaymentSplitInfoToSpreePayments < ActiveRecord::Migration
  def change
    add_column :spree_payments, :split_from_payment_id, :integer
    add_column :spree_payments, :amount_before_split, :decimal, precision: 8, scale: 2
  end
end
