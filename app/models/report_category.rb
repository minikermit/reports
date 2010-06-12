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
#  id                        :integer         not null, primary key
#  report_category_id        :string(50)      not null
#  category_type             :string(50)      not null
#  category_type_description :string(50)      not null
#  category_kind             :string(50)      not null
#  name                      :string(50)      not null
#  comments                  :string(255)     default("-")
#  created_by                :string(50)      default("-")
#  updated_by                :string(50)      default("-")
#  updated_with              :string(50)      default("-")
#  record_validity           :boolean         default(TRUE)
#  record_visibility         :boolean         default(TRUE)
#  created_at                :datetime
#  updated_at                :datetime
#

