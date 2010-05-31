require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: reports
#
#  id                 :integer         not null, primary key
#  reference          :string(50)      not null
#  name               :string(50)      not null
#  report_category_id :integer         not null
#  comments           :string(100)     default("-")
#  position           :integer         default(1)
#  created_at         :datetime
#  updated_at         :datetime
#

