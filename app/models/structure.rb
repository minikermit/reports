class Structure < ActiveRecord::Base

belongs_to :account_plan
belongs_to :report_line

validates_uniqueness_of :report_line_id, :scope => :account_plan_id

end


# == Schema Information
#
# Table name: structures
#
#  id              :integer         not null, primary key
#  report_line_id  :integer
#  account_plan_id :integer
#  comments        :string(100)     default("-")
#  created_at      :datetime
#  updated_at      :datetime
#

