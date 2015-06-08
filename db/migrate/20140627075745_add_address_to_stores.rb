class AddAddressToStores < ActiveRecord::Migration
  def change
    add_column :stores, :address1, :string
    add_column :stores, :address2, :string
    add_column :stores, :city, :string
    add_column :stores, :state_abbr, :string
    add_column :stores, :state_id, :integer
    add_column :stores, :zip, :string
  end
end
