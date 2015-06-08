class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :address_id
      t.string :manager
      t.string :phone
      t.integer :store_no
      t.boolean :pantry
      t.boolean :hide
      t.float :lat
      t.float :lng
      t.boolean :express
      t.boolean :distribution
      t.boolean :fine_art
      t.string :email
    end
  end
end
