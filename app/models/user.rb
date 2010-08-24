class User < ActiveRecord::Base

 attr_accessible :name, :shortname, :email, :login, :password, :password_confirmation 

 acts_as_authentic do |c|
  #c.my_config_option = my_value # for available options see documentation in :Authlogic::ActsAsAuthentic
 end #block optional
 
 has_many :tasklists, :dependent => :destroy
 has_many :comments
 has_many :assignments
 has_many :roles, :through => :assignments
 
 validates_presence_of :name, :shortname , :email, :login
 validates_associated :tasklists
 validates_length_of :login, :within => 3..40
 validates_uniqueness_of :login

 named_scope :limit, lambda { |limit| {:limit => limit}}
 named_scope :search_for_name, lambda { |term| {:conditions => ['lower(name) LIKE ?', "%#{term.downcase}%"]}}

 def role_symbols
  roles.map do |role|
    role.name.underscore.to_sym
  end
 end


end




# == Schema Information
#
# Table name: users
#
#  id                  :integer(4)      not null, primary key
#  name                :string(255)
#  shortname           :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  login               :string(255)     not null
#  email               :string(255)     not null
#  crypted_password    :string(255)     not null
#  password_salt       :string(255)     not null
#  persistence_token   :string(255)     not null
#  single_access_token :string(255)     not null
#  perishable_token    :string(255)     not null
#  login_count         :integer(4)      not null
#  failed_login_count  :integer(4)      not null
#  last_request_at     :datetime
#  current_login_at    :datetime
#  last_login_at       :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#

