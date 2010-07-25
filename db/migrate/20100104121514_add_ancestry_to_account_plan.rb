class AddAncestryToAccountPlan < ActiveRecord::Migration
  def self.up
    add_column :DIM_AccountPlan, :ancestry, :string
    add_index :DIM_AccountPlan,:ancestry
  end

  def self.down
    remove_column :DIM_AccountPlan, :ancestry
    remove_index :DIM_AccountPlan,:ancestry
	end
end
