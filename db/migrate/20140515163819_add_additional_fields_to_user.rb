class AddAdditionalFieldsToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :birth_date, :date
    add_column :spree_users, :internal_customer_id, :string
  end
end
