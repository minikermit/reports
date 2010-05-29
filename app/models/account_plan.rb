class AccountPlan < ActiveRecord::Base

has_many :structures
has_many :report_lines, :through => :structures

end

# == Schema Information
#
# Table name: account_plans
#
#  id         :integer         not null, primary key
#  account_id :string(255)
#  name       :string(255)
#  comments   :string(255)
#  order      :integer
#  created_at :datetime
#  updated_at :datetime
#

