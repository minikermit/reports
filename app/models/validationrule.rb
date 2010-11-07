class Validationrule < ActiveRecord::Base
	#set table_name "B2TA_VAL_Validation_Rules"

  has_many :validations
	
  validates_length_of       :rule_scope,    :within => 3..15
  validates_uniqueness_of   :rule_identification
  validates_length_of       :rule_description,     :maximum => 200
  validates_length_of       :rule_hint,     :maximum => 500  
  validates_length_of       :rule_sql_query,    :within => 1..1000 
  validates_presence_of     :rule_identification

end

# == Schema Information
#
# Table name: validationrules
#
#  id               :integer(4)      not null, primary key
#  ErrorKind        :string(20)      not null
#  rule_description :string(200)     not null
#  rule_scope       :string(15)      not null
#  rule_hint        :string(500)
#  rule_sql_query   :string(1000)
#  created_at       :datetime        not null
#  updated_at       :datetime
#  rule_type        :string(20)      not null
#

