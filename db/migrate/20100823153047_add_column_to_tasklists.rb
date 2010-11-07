class AddColumnToTasklists < ActiveRecord::Migration
  def self.up
    add_column :tasklists, :assigned_to, :integer
  end

  def self.down
    remove_column :tasklists, :assigned_to
  end
end
