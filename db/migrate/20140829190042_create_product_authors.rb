class CreateProductAuthors < ActiveRecord::Migration
  def change
    create_table :product_authors do |t|
      t.integer :author_id
      t.integer :product_id

      t.timestamps
    end
  end
end
