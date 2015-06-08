class AddLegacyDigitalIdToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :legacy_digital_id, :integer
  end
end
