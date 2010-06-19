class AccountPlan < ActiveRecord::Base

acts_as_tree

has_many :structures
has_many :report_lines, :through => :structures

default_scope :order => "account_id ASC, position ASC"

end



# == Schema Information
#
# Table name: account_plans
#
#  id         :integer(4)      not null, primary key
#  account_id :string(255)
#  name       :string(255)
#  comments   :string(255)     default("-")
#  position   :integer(4)      default(1)
#  created_at :datetime
#  updated_at :datetime
#

