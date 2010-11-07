class CreateAssignments < ActiveRecord::Migration
  def self.up
  create_table :assignments, :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
    end
  end

  def self.down
    drop_table :assignments
  end
end
