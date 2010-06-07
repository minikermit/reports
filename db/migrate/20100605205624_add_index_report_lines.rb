class CreateReportLines < ActiveRecord::Migration
  def self.up
    add_index :report_lines, :report_id, :unique => true
  end

  def self.down
    remove_index  :report_lines, :report_id
  end
end
