class CreateTasklists < ActiveRecord::Migration
  def self.up
    create_table :tasklists do |t|
      t.string :name
      t.string :scope
      t.string :genre
      t.integer :project_id
      t.integer :user_id 
      t.text :description
      t.integer :priority
      t.date :due_date
      t.integer :status
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tasklists
  end
end
