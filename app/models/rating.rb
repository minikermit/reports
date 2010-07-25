class Rating < ActiveRecord::Base
	set_table_name "B2TA_XPORT_External_Ratings"
end

# == Schema Information
#
# Table name: B2TA_XPORT_External_Ratings
#
#  id                           :integer(8)      not null, primary key
#  Group_id                     :string(50)      not null
#  Entity_id                    :string(50)      not null
#  Source_id                    :string(50)      not null
#  DownloadDate                 :datetime        not null
#  Record_Creation_Date         :datetime        not null
#  Record_Creator               :string(50)
#  Record_Application           :string(50)
#  Value_Month                  :string(7)       not null
#  Value_Date                   :string(10)      not null
#  Executing_Date               :string(10)      not null
#  Type_of_record               :string(10)      default("EXT-RATE"), not null
#  Bank_id                      :string(4)       not null
#  Branch_id                    :string(3)       not null
#  Count_CIF                    :string(50)
#  Count_Rating_int_cat         :string(10)
#  Count_Rating_ext             :string(5)
#  Count_Rating_Agency_ext_Code :string(10)
#  Count_Rating_Agency_ext      :string(40)
#  Count_Rating_DE_ext          :string(1)
#  Count_Rating_Dept_ext        :string(40)
#  Count_Rating_Term_ext        :string(1)
#  Count_Rating_LHA_ext         :string(1)
#  Count_Ref_Date               :datetime
#

