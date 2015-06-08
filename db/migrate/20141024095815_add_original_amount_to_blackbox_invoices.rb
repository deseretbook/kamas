class AddOriginalAmountToBlackboxInvoices < ActiveRecord::Migration
  def change
    change_table :deseret_book_blackbox_invoices do |t|
      t.decimal :original_amount, precision: 10, scale: 2, null: false, default: 0
    end
  end
end
