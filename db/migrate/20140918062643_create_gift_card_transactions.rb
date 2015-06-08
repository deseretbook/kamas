class CreateGiftCardTransactions < ActiveRecord::Migration
  def change
    create_table :gift_card_transactions do |t|
      t.belongs_to :order, index: true
      t.decimal :card_balance
      t.string :card_number
    end
  end
end
