class CreateRetailStoreHours < ActiveRecord::Migration
  def change
    create_table :retail_store_hours do |t|
      t.integer :retail_store_id
      t.string :opens
      t.string :closes
      t.integer :day
    end
  end
end
