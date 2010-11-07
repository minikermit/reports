class Limit < ActiveRecord::Base
	set_table_name "B2TA_XPORT_Limit"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Limit
#
#  id                            :integer(8)      not null, primary key
#  Group_id                      :string(50)      not null
#  Entity_id                     :string(50)      not null
#  Source_id                     :string(50)      not null
#  DownloadDate                  :datetime        not null
#  Record_Creation_Date          :datetime        not null
#  Record_Creator                :string(50)
#  Record_Application            :string(50)
#  Value_Month                   :string(7)       not null
#  Value_Date                    :string(10)      not null
#  Executing_Date                :string(10)      not null
#  Type_of_record                :string(10)      default("LIMIT"), not null
#  Bank_id                       :string(4)       not null
#  Branch_id                     :string(3)       not null
#  Limit_nr                      :string(20)
#  Legacy_Acc_Subtype_Code       :string(2)
#  Account_id                    :string(50)
#  Count_CIF                     :string(50)
#  Limit_code                    :string(4)
#  Limit_Labeling                :string(30)
#  Limit_Nom                     :decimal(13, 2)  default(0.0)
#  Limit_Curr                    :string(3)
#  Limit_Local_Currency          :string(3)
#  Limit_Local_Amount            :decimal(13, 2)  default(0.0)
#  Limit_FX                      :decimal(18, 10) default(0.0)
#  Limit_NIS                     :decimal(13, 2)  default(0.0)
#  Limit_Start                   :string(10)
#  Limit_End                     :string(10)
#  Limit_Tenure                  :string(5)
#  Limit_Comm                    :string(1)
#  Limit_Comm_Resign             :string(1)
#  Limit_Ref_Date                :string(10)
#  Used_Credit_Limit_Amt         :decimal(13, 2)  default(0.0)
#  Used_Credit_Limit_Amt_Local   :decimal(13, 2)  default(0.0)
#  Used_Credit_Limit_Amt_NIS     :decimal(13, 2)  default(0.0)
#  UnUsed_Credit_Limit_Amt       :decimal(13, 2)  default(0.0)
#  UnUsed_Credit_Limit_Amt_NIS   :decimal(13, 2)  default(0.0)
#  UnUsed_Credit_Limit_Amt_Local :decimal(13, 2)  default(0.0)
#  Executing_Bank_Id             :string(50)
#  Trans_Segment_Code            :string(3)
#  Trans_Segment_Det             :string(40)
#  Trans_Sub_Segment_code        :string(3)
#  Trans_Sub_Segment_Det         :string(40)
#  Trans_Marking_Past_Due_Code   :string(3)
#  Trans_Marking_Past_Due_Det    :string(100)
#  Trans_Markings_Other_code     :string(3)
#  Trans_Markings_Other_Det      :string(100)
#  Executing_Branch_Id           :integer(2)
#

