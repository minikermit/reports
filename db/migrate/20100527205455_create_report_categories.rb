class CreateReportCategories < ActiveRecord::Migration
  def self.up
    create_table :report_categories do |t|
      t.string :name
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :report_categories
  end
end
