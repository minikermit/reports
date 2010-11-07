class AddIndexReports < ActiveRecord::Migration
  def self.up
    add_index :reports, :report_category_id #, :unique => true
  end

  def self.down
    remove_index  :reports, :report_category_id
  end
end
