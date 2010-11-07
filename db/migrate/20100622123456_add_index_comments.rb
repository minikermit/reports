class AddIndexComments < ActiveRecord::Migration
  def self.up
    add_index :comments, :tasklist_id #, :unique => true
    add_index :comments, :user_id
  end

  def self.down
    remove_index  :comments, :tasklist_id 
    remove_index :comments, :user_id
  end
end
