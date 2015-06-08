class AddBlackboxDeliveryIdToShipment < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :blackbox_reference, :integer, limit: 8
  end
end
