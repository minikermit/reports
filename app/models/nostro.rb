class Nostro < ActiveRecord::Base
		set_table_name "B2TA_XPORT_Nostro"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Nostro
#
#  id                          :integer(8)      not null, primary key
#  Group_id                    :string(50)      not null
#  Entity_id                   :string(50)      not null
#  Source_id                   :string(50)      not null
#  DownloadDate                :datetime        not null
#  Record_Creation_Date        :datetime        not null
#  Record_Creator              :string(50)
#  Record_Application          :string(50)
#  Value_Month                 :string(7)       not null
#  Value_Date                  :string(10)      not null
#  Executing_Date              :string(10)      not null
#  Type_of_record              :string(10)      default("NOSTRO"), not null
#  Bank_id                     :string(4)       not null
#  Branch_id                   :string(3)       not null
#  Trans_nr                    :string(15)
#  Trans_Code                  :string(10)
#  Trans_Text                  :string(40)
#  Trans_TB                    :string(1)
#  Trans_ID_int                :string(15)      not null
#  Trans_ID_ext                :string(15)      not null
#  Trans_ID_Text               :string(20)
#  Trans_ID_Bsk                :string(1)
#  Trans_CIF                   :string(50)
#  Trans_Name                  :string(40)
#  Trans_Domicile              :string(3)
#  Trans_Nom                   :decimal(13, 2)  default(0.0)
#  Trans_Local_Nom             :decimal(13, 2)  default(0.0)
#  Trans_Unit                  :integer(4)
#  Trans_Value                 :decimal(13, 2)
#  Trans_Nom_Calc              :decimal(13, 2)
#  Trans_Cur                   :string(3)
#  Trans_Local_Currency        :string(3)
#  Trans_FX                    :decimal(18, 10) default(0.0)
#  Trans_NIS                   :decimal(13, 2)  default(0.0)
#  Trans_Start                 :string(10)      not null
#  Trans_End                   :string(10)      not null
#  Trans_Tenure                :string(5)       not null
#  Trans_Pastdue               :string(1)       not null
#  Trans_Pastdue_date          :string(10)      not null
#  Trans_Ref_date              :string(10)      not null
#  Count_Rating_ext_1          :string(5)       not null
#  Count_Rating_Agency_ext_1   :string(15)      not null
#  Count_Rating_DE_ext_1       :string(1)       not null
#  Count_Rating_Dept_ext_1     :string(40)      not null
#  Count_Rating_Term_ext_1     :string(1)       not null
#  Count_Rating_LHA_ext_1      :string(1)       not null
#  Account_id                  :string(10)
#  Gen_Ledger_Shekel_Item_Code :string(1)       not null
#  Gen_Ledger_Item_Code        :string(5)       not null
#  Gen_Ledger_Item_Type        :string(1)       not null
#  Gen_Ledger_Activity_Type    :string(1)       not null
#  Legacy_System_Code          :string(15)
#  Executing_Bank_Id           :integer(2)
#  Trans_Segment_Code          :string(3)
#  Trans_Segment_Det           :string(40)
#  Trans_Sub_Segment_code      :string(3)
#  Trans_Sub_Segment_Det       :string(40)
#  Trans_Marking_Past_Due_code :string(3)
#  Trans_Marking_Past_Due_Det  :string(100)
#  Trans_Marking_Other_code    :string(3)
#  Trans_Markings_Other_Det    :string(100)
#  Executing_Branch_Id         :integer(2)
#

