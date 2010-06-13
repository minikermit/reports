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
#  id                :integer(4)      not null, primary key
#  report_id         :integer(4)      not null
#  line_id           :string(50)      not null
#  parent_line_id    :string(50)
#  line_caption      :string(50)      not null
#  uo                :string(1)       default("+")
#  comments          :string(100)     default("-")
#  position          :integer(4)      default(1)
#  line_morphing     :string(50)
#  line_style        :string(50)
#  created_by        :string(50)      default("-")
#  updated_by        :string(50)      default("-")
#  updated_with      :string(50)      default("-")
#  record_validity   :boolean(1)      default(TRUE)
#  record_visibility :boolean(1)      default(TRUE)
#  created_at        :datetime
#  updated_at        :datetime
#

