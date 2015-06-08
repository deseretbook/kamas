class CreateImprintLines < ActiveRecord::Migration
  def change
    create_table :spree_imprint_lines do |t|
      t.belongs_to :imprint, index: true
      t.integer :max_characters
      t.integer :position
      t.string :title
      t.string :value
      t.decimal :price, default: 0

      t.timestamps
    end
  end
end
