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
#  reference          :string(255)
#  name               :string(255)
#  report_category_id :integer
#  comments           :string(255)
#  order              :integer
#  created_at         :datetime
#  updated_at         :datetime
#

