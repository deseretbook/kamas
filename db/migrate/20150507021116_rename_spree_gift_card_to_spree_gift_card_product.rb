class RenameSpreeGiftCardToSpreeGiftCardProduct < ActiveRecord::Migration
  def change
    drop_table :spree_gift_card_products
    rename_table :spree_gift_cards, :spree_gift_card_products
  end
end
