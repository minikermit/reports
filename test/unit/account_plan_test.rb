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
#  id         :integer(4)      not null, primary key
#  account_id :string(255)
#  name       :string(255)
#  comments   :string(255)     default("-")
#  position   :integer(4)      default(1)
#  created_at :datetime
#  updated_at :datetime
#

