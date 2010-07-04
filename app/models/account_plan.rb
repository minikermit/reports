class AccountPlan < ActiveRecord::Base

acts_as_tree

has_many :structures
has_many :report_lines, :through => :structures

default_scope :order => "account_id ASC, position ASC"

# autocomplete_for :account_plan, :account_id , :limit => 15, :order => 'created_at DESC'

end




# == Schema Information
#
# Table name: account_plans
#
#  id                :integer(4)      not null, primary key
#  account_type_id   :integer(4)
#  account_id        :string(255)
#  shortname         :string(255)
#  name              :string(255)
#  position          :integer(4)      default(1)
#  account_parent_id :string(255)
#  parent_id         :integer(4)
#  created_by        :string(255)
#  updated_by        :string(255)
#  group_id          :string(255)
#  entity_id         :string(255)
#  uo                :string(255)
#  comments          :string(255)     default("-")
#  created_at        :datetime
#  updated_at        :datetime
#

