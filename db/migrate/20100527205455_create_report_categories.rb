class CreateReportCategories < ActiveRecord::Migration
  def self.up
    create_table :report_categories do |t|

      t.string :report_category_id, :limit   => 50, :null => false
      t.string :category_type, :limit   => 50, :null => false
      t.string :category_type_description, :limit   => 50, :null => false
      t.string :category_kind, :limit   => 50, :null => false
      t.string :name, :limit   => 50, :null => false
      t.string :comments  ,  :default => '-'
      t.string :created_by, :limit   => 50, :default => '-'
      t.string :updated_by, :limit   => 50, :default => '-'
      t.string :updated_with, :limit   => 50, :default => '-'
      t.boolean :record_validity, :default => '1'
      t.boolean :record_visibility, :default => '1'
      t.timestamps
    end
  end

  def self.down
    drop_table :report_categories
  end
end
