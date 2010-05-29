class CreateReportCategories < ActiveRecord::Migration
  def self.up
    create_table :report_categories do |t|
      t.string :name, :limit   => 50, :null => false
      t.string :comments  ,  :default => '-'

      t.timestamps
    end
  end

  def self.down
    drop_table :report_categories
  end
end
