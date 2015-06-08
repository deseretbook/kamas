# This migration comes from spree_deseret_gift_card (originally 20141028233621)
class AddAuthorizedAmountsToGiftCards < ActiveRecord::Migration
  def change
    add_column :gift_cards, :authorized_amount, :decimal, precision: 8, scale: 2
    add_column :gift_cards, :original_authorized_amount, :decimal, precision: 8, scale: 2
  end
end
