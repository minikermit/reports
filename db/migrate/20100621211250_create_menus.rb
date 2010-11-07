class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
      t.string :htmllink
      t.string :target
      t.timestamps
    end
  end
  
  def self.down
    drop_table :menus
  end
end
