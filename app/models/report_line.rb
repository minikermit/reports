class ReportLine < ActiveRecord::Base

  has_many :structures
  has_many :account_plans, :through => :structures
  
end
