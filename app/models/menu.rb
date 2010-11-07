class Menu < ActiveRecord::Base

  acts_as_tree

  attr_accessible :parent_id, :name, :description, :htmllink, :target
  has_many :custom_menus
  has_many :users, :through => :custom_menus
  
end

# == Schema Information
#
# Table name: menus
#
#  id          :integer(4)      not null, primary key
#  parent_id   :integer(4)
#  name        :string(255)
#  description :text
#  htmllink    :string(255)
#  target      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

