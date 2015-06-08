class AddProducerToSpreeTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :producer, :boolean
  end
end
