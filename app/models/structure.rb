class Structure < ActiveRecord::Base

belongs_to :account_plan
belongs_to :report_line

end

# == Schema Information
#
# Table name: structures
#
#  id              :integer         not null, primary key
#  report_line_id  :integer
#  account_plan_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

