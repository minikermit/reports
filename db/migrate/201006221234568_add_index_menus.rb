class AddIndexMenus < ActiveRecord::Migration
  def self.up
    add_index :menus, :parent_id #, :unique => true
  end

  def self.down
    remove_index :menus, :parent_id
  end
end
