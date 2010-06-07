class CreateReportLines < ActiveRecord::Migration
  def self.up
    create_table :report_lines do |t|
      t.string :line_id, :limit   => 50, :null => false
      t.string :line_caption, :limit   => 50, :null => false
      t.string :comments , :limit   => 100, :default => '-'
      t.integer :position ,  :default => 1
      t.string :line_morphing, :limit   => 50
      t.integer :report_id, :limit   => 50, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :report_lines
  end
end
