class AddBlackboxRetriesToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :blackbox_retries, :integer, default: 0, null: false
    add_column :spree_users, :blackbox_state, :string
  end
end
