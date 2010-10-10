class AddIndexAccruals < ActiveRecord::Migration
  def self.up
    add_index :accruals, :period_id #, :unique => true
    add_index :accruals, :type_id
  end

  def self.down
    remove_index  :accruals, :period_id
    remove_index  :accruals, :type_id
  end
end
