class Report < ActiveRecord::Base

belongs_to :report_category
has_many :report_lines

end
