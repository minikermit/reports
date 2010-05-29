class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :reference,:limit   => 50, :null => false
      t.string :name, :limit   => 50, :null => false
      t.integer :report_category_id, :null => false
      t.string :comments , :limit   => 100,  :default => '-'
      t.integer :position,  :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
