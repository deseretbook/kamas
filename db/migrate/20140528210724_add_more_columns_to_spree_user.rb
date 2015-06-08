class AddMoreColumnsToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :first_name, :string
    add_column :spree_users, :last_name, :string
    add_column :spree_users, :phone, :string
    add_column :spree_users, :notes, :text
    add_column :spree_users, :oracle_id, :integer
    add_column :spree_users, :download_credits, :numeric
  end
end
