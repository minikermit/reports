class AddIndexUsersRoles < ActiveRecord::Migration
  def self.up
    add_index :assignments, [ :user_id, :role_id ], :unique => true, :name => 'by_user_and_role'
  end

  def self.down
    remove_index  :assignments, [ :user_id, :role_id ]
  end
end
