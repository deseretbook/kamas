class CreateDeseretBookBlackboxInvoices < ActiveRecord::Migration
  def change
    create_table :deseret_book_blackbox_invoices do |t|
      t.string :transaction_number, limit: 30, null: false
      t.decimal :amount, precision: 10, scale: 2, null: false
      
      t.timestamps
      
      t.index [:transaction_number, :amount], name: 'index_blackbox_invoices_transaction_number_and_amount', unique: true
    end

    change_table :spree_payments do |t|
      t.references :blackbox_invoice, index: true, unique: true
    end
  end
end
