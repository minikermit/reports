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
#  id                 :integer(4)      not null, primary key
#  reference          :string(50)      not null
#  name               :string(50)      not null
#  report_category_id :integer(4)      not null
#  comments           :string(100)     default("-")
#  position           :integer(4)      default(1)
#  created_by         :string(50)      default("-")
#  updated_by         :string(50)      default("-")
#  updated_with       :string(50)      default("-")
#  record_validity    :boolean(1)      default(TRUE)
#  record_visibility  :boolean(1)      default(TRUE)
#  created_at         :datetime
#  updated_at         :datetime
#

