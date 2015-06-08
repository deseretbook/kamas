class CreateLineItemPersonalization < ActiveRecord::Migration
  def change
    create_table :spree_line_item_personalizations do |t|
      t.belongs_to :line_item, index: true
      t.json :data
      t.decimal :price

      t.timestamps
    end
  end
end
