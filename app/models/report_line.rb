class ReportLine < ActiveRecord::Base

  has_many :structures
  has_many :account_plans, :through => :structures
  
end

# == Schema Information
#
# Table name: report_lines
#
#  id            :integer         not null, primary key
#  line_id       :string(255)
#  line_caption  :string(255)
#  comments      :string(255)
#  order         :integer
#  line_morphing :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

