class Assignment < ActiveRecord::Base

belongs_to :user
belongs_to :role

end

# == Schema Information
#
# Table name: assignments
#
#  role_id :integer(4)
#  user_id :integer(4)
#

