class CreateAccountPlans < ActiveRecord::Migration
  def self.up
    create_table :account_plans do |t|
      t.string :account_id
      t.string :name
      t.string :comments  ,  :default => '-'
      t.integer :position ,  :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :account_plans
  end
end
