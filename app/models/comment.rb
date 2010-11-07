class Comment < ActiveRecord::Base

    belongs_to :tasklist
    belongs_to :user

    default_value_for :user_id, User.current

end


# == Schema Information
#
# Table name: comments
#
#  id          :integer(4)      not null, primary key
#  body        :text
#  tasklist_id :integer(4)
#  user_id     :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

