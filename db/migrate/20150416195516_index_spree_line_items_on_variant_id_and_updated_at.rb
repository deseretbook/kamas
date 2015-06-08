class IndexSpreeLineItemsOnVariantIdAndUpdatedAt < ActiveRecord::Migration
  disable_ddl_transaction!

  def change
    # Keep the gift card admin UI fast no matter how many gift card orders there are
    add_index :spree_line_items, [:variant_id, :updated_at],
      name: 'index_spree_line_items_on_variant_and_updated',
      algorithm: :concurrently
  end
end
