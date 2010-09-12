class CreateCustomMenus < ActiveRecord::Migration
  def self.up
  create_table :custom_menus, :id => false, :force => true do |t|
    t.integer "menu_id"
    t.integer "user_id"
    end
  end

  def self.down
    drop_table  :custom_menus
  end
end