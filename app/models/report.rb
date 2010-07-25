class Report < ActiveRecord::Base

belongs_to :report_category, :foreign_key => "report_category_id"
has_many :report_lines

acts_as_list    :scope => :report_category
default_scope :order => "report_category_id ASC, position ASC"

validates_uniqueness_of :reference
validates_uniqueness_of :name
validates_presence_of :reference
validates_presence_of :name
validates_presence_of :report_category
validates_numericality_of :reference
validates_associated :report_lines

end




# == Schema Information
#
# Table name: reports
#
#  id                 :integer(4)      not null, primary key
#  reference          :string(50)      not null
#  name               :string(50)      not null
#  report_category_id :integer(4)      not null
#  comments           :string(100)     default("-")
#  position           :integer(4)      default(1)
#  created_by         :string(50)      default("-")
#  updated_by         :string(50)      default("-")
#  updated_with       :string(50)      default("-")
#  record_validity    :boolean(1)      default(TRUE)
#  record_visibility  :boolean(1)      default(TRUE)
#  created_at         :datetime
#  updated_at         :datetime
#

