class AddIndexAccountPlans < ActiveRecord::Migration
  def self.up
    add_index :account_plans, :account_type_id #, :unique => true
    add_index :account_plans, :parent_id
  end

  def self.down
    remove_index  :account_plans, :account_type_id
    remove_index  :account_plans, :parent_id
  end
end
