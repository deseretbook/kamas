class AddOracleCodeToSpreeShippingMethods < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :oracle_code, :string
  end
end
