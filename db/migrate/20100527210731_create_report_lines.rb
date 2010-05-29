class CreateReportLines < ActiveRecord::Migration
  def self.up
    create_table :report_lines do |t|
      t.string :line_id
      t.string :line_caption
      t.string :comments
      t.integer :order
      t.string :line_morphing

      t.timestamps
    end
  end

  def self.down
    drop_table :report_lines
  end
end
