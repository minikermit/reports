require 'test_helper'

class StructureTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: structures
#
#  id              :integer(4)      not null, primary key
#  report_line_id  :integer(4)
#  account_plan_id :integer(4)
#  comments        :string(100)     default("-")
#  created_at      :datetime
#  updated_at      :datetime
#

