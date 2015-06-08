class AddBlackboxRetriesToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :blackbox_retries, :integer, default: 0, null: false
  end
end
