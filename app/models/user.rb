class User < ActiveRecord::Base

 attr_accessible :name, :shortname, :email, :login, :password, :password_confirmation 

 acts_as_authentic do |c|
  #c.my_config_option = my_value # for available options see documentation in :Authlogic::ActsAsAuthentic
 end #block optional
 
 has_many :tasklists, :dependent => :destroy
 has_many :comments
 
 validates_presence_of :name, :shortname , :email, :login
 validates_associated :tasklists

end



# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  shortname  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

