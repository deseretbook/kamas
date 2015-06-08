class RenameStoresTable < ActiveRecord::Migration
  def change
    rename_table :stores, :retail_stores
  end
end
