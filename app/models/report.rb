class Report < ActiveRecord::Base

belongs_to :report_category
has_many :report_lines

validates_uniqueness_of :reference
validates_uniqueness_of :name
validates_presence_of :reference
validates_presence_of :name
validates_presence_of :report_category
validates_numericality_of :reference
validates_associated :report_category

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

