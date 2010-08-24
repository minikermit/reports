class AddIndexStructures < ActiveRecord::Migration
  def self.up
    add_index :structures, :report_line_id  #, :unique => true
    add_index :structures, :account_plan_id #, :unique => true
  end

  def self.down
    remove_index  :structures, :report_line_id
    remove_index  :structures, :account_plan_id
  end
end