require 'test_helper'

class ReportLineTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: report_lines
#
#  id            :integer         not null, primary key
#  line_id       :string(50)      not null
#  line_caption  :string(50)      not null
#  comments      :string(100)     default("-")
#  position      :integer         default(1)
#  line_morphing :string(50)
#  report_id     :integer(50)     not null
#  created_at    :datetime
#  updated_at    :datetime
#

