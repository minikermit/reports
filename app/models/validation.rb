class Validation < ActiveRecord::Base

	set_table_name "B2TA_VAL_Error_Reports"
		
	belongs_to :validationrule
		
 	validates_uniqueness_of   :id
  	validates_length_of       :validationrule_id,     :within => 1..10
  	validates_length_of       :Recommendation,    :maximum => 100
  	validates_presence_of     :LoadDate
  	validates_presence_of     :Source_id		
  	validates_presence_of     :Entity_id
  	validates_presence_of     :validationrule_id
  	validates_presence_of     :ErrorType	
  	validates_presence_of     :OutputFile
  	validates_presence_of     :OutputField

end

# == Schema Information
#
# Table name: B2TA_VAL_Error_Reports
#
#  id                :integer(8)      not null, primary key
#  Original_id       :integer(8)      not null
#  LoadDate          :string(10)      not null
#  Source_id         :string(50)      not null
#  Entity_id         :string(50)      not null
#  Client_id         :string(50)      not null
#  Key_id            :string(100)     not null
#  OutputFile        :string(50)      not null
#  OutputField       :string(50)      not null
#  Source            :string(50)      not null
#  Destination       :string(50)      not null
#  ErrorType         :string(50)      not null
#  validationrule_id :integer(8)      not null
#  Recommendation    :string(100)     not null
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

