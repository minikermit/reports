class Report < ActiveRecord::Base

belongs_to :report_category
has_many :report_lines

end

# == Schema Information
#
# Table name: reports
#
#  id                 :integer         not null, primary key
#  reference          :string(255)
#  name               :string(255)
#  report_category_id :integer
#  comments           :string(255)
#  order              :integer
#  created_at         :datetime
#  updated_at         :datetime
#

