class AddIndexCustomMenus < ActiveRecord::Migration
  def self.up
    add_index :custom_menus, :menu_id #, :unique => true
    add_index :custom_menus, :user_id
  end

  def self.down
    remove_index  :custom_menus, :menu_id
    remove_index  :custom_menus, :user_id
  end
end
