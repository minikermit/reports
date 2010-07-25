class Counterparty < ActiveRecord::Base
	set_table_name "B2TA_XPORT_Counterparty"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Counterparty
#
#  id                       :integer(8)      not null, primary key
#  Group_id                 :string(50)      not null
#  Entity_id                :string(50)      not null
#  Source_id                :string(50)      not null
#  DownloadDate             :datetime        not null
#  Record_Creation_Date     :datetime        not null
#  Record_Creator           :string(50)
#  Record_Application       :string(50)
#  Value_Month              :string(7)       not null
#  Value_Date               :string(10)      not null
#  Executing_Date           :string(10)      not null
#  Type_of_record           :string(10)      not null
#  Bank_id                  :string(4)       not null
#  Branch_id                :string(3)       not null
#  Count_CIF                :string(50)
#  Count_Group              :string(15)
#  Count_Group_Code         :string(1)
#  Count_Name               :string(60)
#  Count_Segment_BH         :string(40)
#  Count_Segment_Det        :string(40)
#  Count_Segment            :string(40)
#  Count_Legal              :string(1)
#  Count_Domicile           :string(3)
#  Count_Risk               :string(3)
#  Count_Org_BH             :string(15)
#  Count_Domicile_Dom       :string(1)
#  Count_Domicile_OECD      :string(1)
#  Count_Domicile_EEA       :string(1)
#  Count_Exp_Tot            :decimal(13, 2)
#  Count_Prov               :decimal(13, 2)
#  Count_Ref_Date           :string(10)      not null
#  Swift_Address            :string(16)
#  Swift_Address_Branch     :string(16)
#  Establish_Date           :string(10)
#  Global_Cif               :string(16)
#  Count_Segment_Code       :string(3)
#  Count_Sub_Segment_Code   :string(3)
#  Count_Sub_Segment_Det    :string(60)
#  Count_Income_Total_Local :decimal(13, 2)  default(0.0)
#  Count_Income_Total_NIS   :decimal(13, 2)  default(0.0)
#  Count_Code               :string(2)
#  Domicile_Branch_Code     :string(3)
#

