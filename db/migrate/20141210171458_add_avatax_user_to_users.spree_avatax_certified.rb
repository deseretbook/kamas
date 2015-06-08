# This migration comes from spree_avatax_certified (originally 20140408211722)
class AddAvataxUserToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :exemption_number, :string
  end
end
