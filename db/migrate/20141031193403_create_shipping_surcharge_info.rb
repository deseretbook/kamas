class CreateShippingSurchargeInfo < ActiveRecord::Migration
  def change

    create_table :deseret_book_shipping_surcharge_types do |t|
      t.string :name, null: false
    end

    create_table :deseret_book_shipping_surcharge_rates do |t|
      t.belongs_to :surcharge_type, :method, null: false
      t.decimal :amount, null: false, precision: 10, scale: 2
    end

    add_column :spree_variants, :shipping_surcharge_type_id, :integer

  end
end
