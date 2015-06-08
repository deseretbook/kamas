class AddEmptyGiftCardProductsTable < ActiveRecord::Migration
  def change
    # This dummy table is created to allow a future model and table rename
    # operation to succeed.  The new code needs to be able to run (to generate
    # assets, etc.) before migrations are run, so we create this temporary
    # table.
    # https://trello.com/c/lSb1uoZl/2371-3-post-launch-add-blackbox-oracle-invoices-and-receipts-to-admin-ui
    create_table :spree_gift_card_products, force: true do |t|
      t.integer :product_id
      t.text    :data
    end
  end
end
