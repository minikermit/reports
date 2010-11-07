class AddIndexDepreciations < ActiveRecord::Migration
  def self.up
    add_index :depreciations, :period_id #, :unique => true
    add_index :depreciations, :type_id
  end

  def self.down
    remove_index  :depreciations, :period_id
    remove_index  :depreciations, :type_id
  end
end
