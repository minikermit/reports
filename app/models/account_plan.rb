class AccountPlan < ActiveRecord::Base

has_many :structures
has_many :report_lines, :through => :structures

end
