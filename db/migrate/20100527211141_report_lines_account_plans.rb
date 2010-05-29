class ReportLinesAccountPlans < ActiveRecord::Migration


# in migration
  def self.up
    create_table 'report_lines_account_plans', :id => false do |t|
      t.column :report_line_id, :integer
      t.column :account_plan_id, :integer
    end
  end

  def self.down
    drop_table 'report_lines_account_plans'
  end  

end
