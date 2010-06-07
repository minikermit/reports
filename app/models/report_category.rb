class ReportCategory < ActiveRecord::Base

# set_table_name "DIM_Report_Categories"
# set_primary_key "Report_Category_ID" 

has_many :reports

validates_uniqueness_of :name
validates_presence_of :name
validates_associated :reports


end


# == Schema Information
#
# Table name: report_categories
#
#  id         :integer         not null, primary key
#  name       :string(50)      not null
#  comments   :string(255)     default("-")
#  created_at :datetime
#  updated_at :datetime
#

