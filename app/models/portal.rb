class Portal < ActiveRecord::Base
  has_attached_file :logo
  attr_protected :logo_file_name, :logo_content_type, :logo_size

  validates_attachment_presence :logo
  validates_attachment_size :logo, :less_than => 2.megabytes
  validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png', 'image/gif']

end

# == Schema Information
#
# Table name: portals
#
#  id                :integer(4)      not null, primary key
#  title             :string(255)
#  description2      :text
#  created_at        :datetime
#  updated_at        :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer(4)
#  logo_updated_at   :datetime
#

