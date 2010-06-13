class CreateReportLines < ActiveRecord::Migration
  def self.up
    create_table :report_lines do |t|
      t.integer :report_id, :limit   => 50, :null => false
      t.string :line_id, :limit   => 50, :null => false
      t.string :parent_line_id, :limit   => 50
      t.string :line_caption, :limit   => 50, :null => false
      t.string :uo , :limit   => 1, :default => '+'
      t.string :comments , :limit   => 100, :default => '-'
      t.integer :position ,  :default => 1
      t.string :line_morphing, :limit   => 50
      t.string :line_style,  :limit => 50
      t.string :created_by, :limit   => 50, :default => '-'
      t.string :updated_by, :limit   => 50, :default => '-'
      t.string :updated_with, :limit   => 50, :default => '-'
      t.boolean :record_validity, :default => '1'
      t.boolean :record_visibility, :default => '1'
      t.timestamps
    end
  end

  def self.down
    drop_table :report_lines
  end
end
