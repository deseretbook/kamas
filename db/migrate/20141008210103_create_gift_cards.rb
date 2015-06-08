class CreateGiftCards < ActiveRecord::Migration
  def change
    create_table :gift_cards do |t|
      t.string  :gift_card_number
      t.string  :authorization_id
      t.integer :payment_method_id
      t.integer :user_id
    end
  end
end
