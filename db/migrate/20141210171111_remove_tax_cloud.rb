require_relative '20140916220215_create_spree_tax_cloud_transactions.spree_tax_cloud'
require_relative '20140916220216_create_spree_tax_cloud_cart_items.spree_tax_cloud'
require_relative '20140916220217_fix_scale_of_cart_item_prices.spree_tax_cloud'
require_relative '20140916220218_add_tic_to_products.spree_tax_cloud'

class RemoveTaxCloud < ActiveRecord::Migration
  def change
    revert AddTicToProducts
    revert FixScaleOfCartItemPrices
    revert CreateSpreeTaxCloudCartItems
    revert CreateSpreeTaxCloudTransactions
  end
end
