require 'test_helper'

class AccountPlanTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

