class AddIndexTasklists < ActiveRecord::Migration
  def self.up
    add_index :tasklists, :project_id #, :unique => true
    add_index :tasklists, :user_id
  end

  def self.down
    remove_index  :tasklists, :project_id
    remove_index :tasklists, :user_id
  end
end
