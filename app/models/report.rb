class Report < ActiveRecord::Base

belongs_to :report_category
has_many :report_lines

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
#  id                 :integer         not null, primary key
#  reference          :string(50)      not null
#  name               :string(50)      not null
#  report_category_id :integer         not null
#  comments           :string(100)     default("-")
#  position           :integer         default(1)
#  created_by         :string(50)      default("-")
#  updated_by         :string(50)      default("-")
#  updated_with       :string(50)      default("-")
#  record_validity    :boolean         default(TRUE)
#  record_visibility  :boolean         default(TRUE)
#  created_at         :datetime
#  updated_at         :datetime
#

