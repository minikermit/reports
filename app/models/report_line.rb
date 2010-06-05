class ReportLine < ActiveRecord::Base

  belongs_to :report
  has_many :structures
  has_many :account_plans, :through => :structures

  acts_as_list    :scope => :report

  validates_uniqueness_of :line_id
  validates_presence_of :line_id , :line_caption

end


# == Schema Information
#
# Table name: report_lines
#
#  id            :integer         not null, primary key
#  line_id       :string(50)      not null
#  line_caption  :string(50)      not null
#  comments      :string(100)     default("-")
#  position      :integer         default(1)
#  line_morphing :string(50)
#  report_id     :integer(50)     not null
#  created_at    :datetime
#  updated_at    :datetime
#
