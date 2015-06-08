class AddingDepartmnetColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :spree_users, :department, :string, default: nil
  end
end
