class ReportCategory < ActiveRecord::Base

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

