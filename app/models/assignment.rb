class Assignment < ActiveRecord::Base

belongs_to :user
belongs_to :role

validates_uniqueness_of :user_id, :scope => :role_id

end

# == Schema Information
#
# Table name: assignments
#
#  role_id :integer(4)
#  user_id :integer(4)
#

