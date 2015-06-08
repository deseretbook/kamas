class CreateGiftCertificates < ActiveRecord::Migration
  def change
    create_table :spree_gift_certificates do |t|
      t.integer :product_id
      t.text :data
    end
  end
end
