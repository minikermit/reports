require 'test_helper'

class ReportCategoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: report_categories
#
#  id         :integer         not null, primary key
#  name       :string(50)      not null
#  comments   :string(255)     default("-")
#  created_at :datetime
#  updated_at :datetime
#

