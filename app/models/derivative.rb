class Derivative < ActiveRecord::Base
	set_table_name "B2TA_XPORT_OTC_Derivatives"
end

# == Schema Information
#
# Table name: B2TA_XPORT_OTC_Derivatives
#
#  id                          :integer(8)      not null, primary key
#  Group_id                    :string(50)      not null
#  Entity_id                   :string(50)      not null
#  Source_id                   :string(50)      not null
#  DownloadDate                :datetime        not null
#  Record_Creation_Date        :datetime        not null
#  Record_Creator              :string(50)      default("suser_sname() + '-' + user_name(")
#  Record_Application          :string(50)      default("app_name(")
#  Value_Month                 :string(7)       not null
#  Value_Date                  :string(10)      not null
#  Executing_Date              :string(10)      not null
#  Type_of_record              :string(10)      default("OTC"), not null
#  Bank_id                     :string(4)       not null
#  Branch_id                   :string(3)       not null
#  Trans_nr                    :string(15)
#  Count_CIF                   :string(50)
#  Limit_nr                    :string(15)
#  Trans_Code                  :string(10)
#  Trans_Text                  :string(40)
#  Trans_LS                    :string(5)
#  Trans_Nostro                :string(1)
#  Trans_Nostro_TB             :string(1)
#  Trans_Underl_ID_int         :string(15)
#  Trans_Underl_ID_ext         :string(15)
#  Trans_Underl_ID_Ind         :string(1)
#  Trans_Underl_ID_Bsk         :string(1)
#  Trans_Underl_ID_Text        :string(40)
#  Trans_Underl_Categ          :string(40)
#  Trans_Underl_Def            :string(40)
#  Trans_Underl_CIF            :string(15)
#  Trans_Underl_Name           :string(40)
#  Trans_Underl_Domicile       :string(3)
#  Trans_Underl_Start          :string(10)
#  Trans_Underl_End            :string(10)
#  Trans_Underl_Tenure         :string(5)
#  Trans_Underl_Nom            :decimal(13, 2)  default(0.0)
#  Trans_Underl_Unit           :integer         default(0)
#  Trans_Underl_Value_Con      :decimal(13, 2)  default(0.0)
#  Trans_Underl_Nom_Calc       :decimal(13, 2)  default(0.0)
#  Trans_Underl_Curr           :string(3)
#  Trans_Underl_Local_Curr     :string(3)
#  Trans_Underl_Local_Nom      :decimal(13, 2)  default(0.0)
#  Trans_Underl_FX             :decimal(18, 10) default(0.0)
#  Trans_Underl_NIS            :decimal(13, 2)  default(0.0)
#  Trans_Value_Mar             :decimal(13, 2)  default(0.0)
#  Trans_Value_Mod             :decimal(13, 2)  default(0.0)
#  Trans_Curr                  :string(3)
#  Trans_Local_Curr            :string(3)
#  Trans_Value_Local_Mar       :decimal(13, 2)  default(0.0)
#  Trans_Value_Local_Mod       :decimal(13, 2)  default(0.0)
#  Trans_FX                    :decimal(18, 10) default(0.0)
#  Trans_NIS                   :decimal(13, 2)  default(0.0)
#  Trans_Addon_B1              :string(4)       default("0")
#  Trans_Addon_Am_B1           :decimal(13, 2)  default(0.0)
#  Trans_Addon_B2              :string(4)       default("0")
#  Trans_Addon_Am_B2           :decimal(13, 2)  default(0.0)
#  Trans_Start                 :string(10)
#  Trans_End                   :string(10)
#  Trans_Tenure                :string(5)
#  Trans_Tenure_ST             :string(1)
#  Trans_Start_Spec            :string(10)
#  Trans_End_Spec              :string(10)
#  Trans_Tenure_Spec           :string(5)
#  Trans_Tenure_Spec_ST        :string(1)
#  Trans_Ref_Date              :string(10)
#  Account_ID                  :string(50)
#  Gen_Ledger_Item_Code        :string(1)
#  Gen_Ledger_Item_Type        :string(5)
#  Gen_Shekel_Item_Code        :string(1)
#  Linkage_Base_Type_Code      :string(2)
#  Bal_Sheet_Major_Code        :string(3)
#  Sec_Bal_Sheet_Item_Code     :string(1)
#  Major_Yield_Category        :string(2)
#  Sec_Yield_Category          :string(1)
#  Responsibility_Code         :string(1)
#  Detail_Type_Code            :string(2)
#  Sec_Linkage_Base_Code       :string(2)
#  GL_Item_Type_Code           :string(1)
#  Bal_Sheet_Position_Code     :string(1)
#  Purch_Sell_Type_Code        :string(1)
#  Contract_Status_Type_Code   :string(1)
#  Trans_Tenure_Left           :integer(4)
#  Executing_Bank_Id           :integer(2)
#  Trans_Segment_Code          :string(10)
#  Trans_Segment_Det           :string(40)
#  Trans_Sub_Segment_code      :string(3)
#  Trans_Sub_Segment_Det       :string(40)
#  Trans_Marking_Past_Due_code :string(3)
#  Trans_Marking_Past_Due_Det  :string(100)
#  Trans_Markings_Other_code   :string(3)
#  Trans_Markings_Other_Det    :string(100)
#  Executing_Branch_Id         :integer(2)
#

