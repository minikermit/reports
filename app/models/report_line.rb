class ReportLine < ActiveRecord::Base

  belongs_to :report
  has_many :structures
  has_many :account_plans, :through => :structures

  acts_as_list    :scope => :report
  default_scope :order => "report_id ASC, position ASC"

  validates_uniqueness_of :line_id
  validates_presence_of :line_id , :line_caption

end



# == Schema Information
#
# Table name: report_lines
#
#  id                :integer(4)      not null, primary key
#  report_id         :integer(4)      not null
#  line_id           :string(50)      not null
#  parent_line_id    :string(50)
#  line_caption      :string(50)      not null
#  uo                :string(1)       default("+")
#  comments          :string(100)     default("-")
#  position          :integer(4)      default(1)
#  line_morphing     :string(50)
#  line_style        :string(50)
#  created_by        :string(50)      default("-")
#  updated_by        :string(50)      default("-")
#  updated_with      :string(50)      default("-")
#  record_validity   :boolean(1)      default(TRUE)
#  record_visibility :boolean(1)      default(TRUE)
#  created_at        :datetime
#  updated_at        :datetime
#

