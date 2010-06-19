class Project < ActiveRecord::Base
  attr_accessible :title, :comments

  has_many :tasklists

end

# == Schema Information
#
# Table name: projects
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

