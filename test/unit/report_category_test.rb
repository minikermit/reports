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
#  id                        :integer         not null, primary key
#  report_category_id        :string(50)      not null
#  category_type             :string(50)      not null
#  category_type_description :string(50)      not null
#  category_kind             :string(50)      not null
#  name                      :string(50)      not null
#  comments                  :string(255)     default("-")
#  created_by                :string(50)      default("-")
#  updated_by                :string(50)      default("-")
#  updated_with              :string(50)      default("-")
#  record_validity           :boolean         default(TRUE)
#  record_visibility         :boolean         default(TRUE)
#  created_at                :datetime
#  updated_at                :datetime
#

