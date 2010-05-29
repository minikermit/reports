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
#  id         :integer         not null, primary key
#  account_id :string(255)
#  name       :string(255)
#  comments   :string(255)
#  order      :integer
#  created_at :datetime
#  updated_at :datetime
#

