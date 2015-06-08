class IndexSpreeUsersOnOracleId < ActiveRecord::Migration
  def change
    add_index :spree_users, :oracle_id
  end
end
