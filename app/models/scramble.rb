class Scramble < ActiveRecord::Base
		set_table_name "B2TA_Encrypted"
end

# == Schema Information
#
# Table name: B2TA_Encrypted
#
#  id           :integer(8)      not null, primary key
#  ClearID      :string(50)      not null
#  EncryptedID1 :string(50)      not null
#  EncryptedID2 :string(50)      not null
#  EncryptedID3 :string(50)
#  EncryptedID4 :string(50)
#  entity_id    :string(50)
#

