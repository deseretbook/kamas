class DropAuthors < ActiveRecord::Migration
  def up
    drop_table :authors
  end

  def down
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :deseretbook
      t.text :bio
      t.text :short_bio
      t.boolean :has_salable_skus

      t.timestamps
    end 
  end
end
