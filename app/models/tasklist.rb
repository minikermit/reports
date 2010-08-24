class Tasklist < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  has_many :comments
  belongs_to :assigned_person,
             :class_name => "User",
             :foreign_key => "assigned_to",
             :conditions => "assigned_to is not null"

  attr_accessible :name, :scope, :genre, :project_id, :description, :assigned_to, :due_date, :priority, :status, :user_id

  named_scope :recent,    lambda { |*date| {:conditions => { :created_at => date.first || 1.month.ago } } }
  named_scope :before,    lambda{ |date| { :conditions => ['created_at > ?',  date] } }
 # named_scope :mytasks,   :conditions => ['tasklist.assigned_to = ?', current_user.id]
  named_scope :basel2,    :conditions => "tasklist.project.name = 'Basel II' "
  named_scope :unassigned,    :conditions => "assigned_to is null"

  
  validates_presence_of :name, :scope, :due_date, :project_id, :assigned_to
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

