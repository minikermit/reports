class CreateAccountPlans < ActiveRecord::Migration
  def self.up
    create_table :account_plans do |t|
      t.integer :account_type_id
      t.string :account_id
      t.string :shortname
      t.string :name
      t.integer :position ,  :default => 1
      t.string :account_parent_id
      t.integer :parent_id
      t.bit :lock_status , :default => '0'
      t.string :created_by
      t.string :updated_by
      t.string :group_id
      t.string :entity_id
      t.string :uo
      t.string :comments  ,  :default => '-'
      t.timestamps
    end
  end

  def self.down
    drop_table :account_plans
  end
end

