class AddDigitalTypeToSpreeDigitals < ActiveRecord::Migration
  def change
    add_column :spree_digitals, :digital_type, :string
  end
end
