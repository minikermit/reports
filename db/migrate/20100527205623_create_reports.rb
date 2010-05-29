class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :reference
      t.string :name
      t.integer :report_category_id
      t.string :comments
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
