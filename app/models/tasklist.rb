class Tasklist < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  has_many :comments

  attr_accessible :name, :scope, :genre, :project_id, :description, :user_id, :due_date, :priority, :status

  named_scope :recent,    lambda { |*date| {:conditions => { :created_at => date.first || 1.week.ago } } }
  named_scope :before,    lambda{ |date| { :conditions => ['created_at > ?',  date] } }
  named_scope :basel2,    :conditions => "tasklist.project.name = 'Basel II' "

  
  validates_presence_of :name, :scope, :due_date, :project_id 
  validates_uniqueness_of :name

end



# == Schema Information
#
# Table name: tasklists
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  scope       :string(255)
#  genre       :string(255)
#  project_id  :integer(4)
#  user_id     :integer(4)
#  description :text
#  priority    :string(255)
#  due_date    :date
#  status      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

