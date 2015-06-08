class CreatePersonalizations < ActiveRecord::Migration
  def change
    create_table :spree_personalizations do |t|
      t.string :type
      t.belongs_to :product, index: true
      t.hstore :data

      t.timestamps
    end
  end
end
