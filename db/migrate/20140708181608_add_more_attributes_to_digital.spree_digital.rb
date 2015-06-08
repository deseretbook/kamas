# This migration comes from spree_digital (originally 20140708171922)
class AddMoreAttributesToDigital < ActiveRecord::Migration
  def change
    add_column :spree_digitals, :sample_file_name, :string
    add_column :spree_digitals, :sample_content_type, :string
    add_column :spree_digitals, :sample_file_size, :integer

    add_column :spree_digitals, :isrc, :string
    add_column :spree_digitals, :asin, :string
    add_column :spree_digitals, :running_time, :string
    add_column :spree_digitals, :primary_download, :boolean
    add_column :spree_digitals, :kindle_price, :float
    add_column :spree_digitals, :track_no, :integer
    add_column :spree_digitals, :track_count, :integer
    add_column :spree_digitals, :length, :text
  end
end
