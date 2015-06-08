class AddOrderToBlackboxInvoices < ActiveRecord::Migration
  def change
    change_table :deseret_book_blackbox_invoices do |t|
      t.references :order
    end
  end
end
