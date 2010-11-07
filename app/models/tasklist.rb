class Tasklist < ActiveRecord::Base

  belongs_to :user
  belongs_to :project
  has_many :comments
  belongs_to :assigned_person,
             :class_name => "User",
             :foreign_key => "assigned_to",
             :conditions => "assigned_to is not null"

  attr_accessible :name, :scope, :genre, :project_id, :description, :assigned_to, :due_date, :priority, :status, :user_id

  named_scope :recent,    lambda { |date| {:conditions => ['created_at > ?', 1.month.ago ] } }
  named_scope :before,    lambda{ |date| { :conditions => ['created_at < ?',  date] } }
  named_scope :overdue,    lambda{ |date| { :conditions => ['due_date < ?',  Date.today.to_s] } }
  named_scope :mytasks,   :conditions => ['tasklists.assigned_to = ?', User.current]
  named_scope :mycreatedtasks,   :conditions => ['tasklists.user_id = ?', User.current]  
  named_scope :basel2,    :conditions => "tasklists.project.name = 'Basel II' "
  named_scope :unassigned,    :conditions => "assigned_to is null"
  
  validates_presence_of :name, :scope, :due_date, :project_id, :assigned_to
  validates_uniqueness_of :name

  default_value_for :user_id, User.current


  # creates hash for nice names in view
  PRIORITY_NAMES = { 1 => 'Very high',
                     2 => 'High',
                     3 => 'Medium',
                     4 => 'Low',
                     5 => 'Very Low'}

  STATUS_NAMES = {     1 => 'To start',
                       2 => 'To assign',
                       3 => 'Work in progress',
                       4 => 'Done',
                       5 => 'Discarded',
                       6 => 'Reopened',
                       7 => 'To review',
                       8 => 'To test'}


  GENRE_NAMES = {      "1" => 'Production',
                       "2" => 'New Feature',
                       "3" => 'New Control',
                       "4" => 'Bug',
                       "5" => 'Nice to have',
                       "6" => 'New Specifications',
                       "7" => 'Enhancements',
                       "8" => 'Other'}


  def priority_name
    PRIORITY_NAMES[self.priority]
  end

  def status_name
    STATUS_NAMES[self.status]
  end

  def genre_name
      GENRE_NAMES[self.genre]
  end


  # moves hash to an array for select box
  def self.priority_name_options
    PRIORITY_NAMES.to_a.sort
  end

  def self.status_name_options
    STATUS_NAMES.to_a.sort
  end

  def self.genre_name_options
    GENRE_NAMES.to_a.sort
  end

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

