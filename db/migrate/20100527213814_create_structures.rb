class CreateStructures < ActiveRecord::Migration
  def self.up
    create_table :structures do |t|
      t.integer :report_line_id
      t.integer :account_plan_id
      t.string :comments , :limit   => 100, :default => '-'

      t.timestamps
    end
  end

  def self.down
    drop_table :structures
  end
end
