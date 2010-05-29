class ReportCategory < ActiveRecord::Base

has_many :reports

end

# == Schema Information
#
# Table name: report_categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  comments   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

