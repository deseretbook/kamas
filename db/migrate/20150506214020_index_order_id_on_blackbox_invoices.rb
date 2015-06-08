class IndexOrderIdOnBlackboxInvoices < ActiveRecord::Migration
  disable_ddl_transaction!

  def change
    add_index :deseret_book_blackbox_invoices, :order_id,
      name: 'index_blackbox_invoices_on_order_id',
      algorithm: :concurrently
  end
end
