class Loanbook < ActiveRecord::Base
		set_table_name "B2TA_XPORT_Loan_Book"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Loan_Book
#
#  id                             :integer(8)      not null, primary key
#  Group_id                       :string(50)      not null
#  Entity_id                      :string(50)      not null
#  Source_id                      :string(50)      not null
#  DownloadDate                   :datetime        not null
#  Record_Creation_Date           :datetime        not null
#  Record_Creator                 :string(50)
#  Record_Application             :string(50)
#  Value_Month                    :string(7)       not null
#  Value_Date                     :string(10)      not null
#  Executing_Date                 :string(10)      not null
#  Type_of_record                 :string(10)      default("LOAN-BOOK"), not null
#  Bank_id                        :string(4)       not null
#  Branch_id                      :string(3)       not null
#  Trans_nr                       :string(25)
#  Count_CIF                      :string(50)
#  Legacy_System_Code             :string(15)
#  OnCall_Ind                     :string(1)
#  Legacy_Acc_Subtype_Code        :string(3)
#  Account_id                     :string(50)
#  Limit_Nr                       :string(15)
#  Trans_Code                     :string(10)
#  Trans_Text                     :string(40)
#  Trans_Balance_Sheet            :string(3)
#  Trans_Repo                     :string(4)
#  Trans_Nom                      :decimal(13, 2)  default(0.0)
#  Trans_Cur                      :string(3)
#  Trans_Local_Currency           :string(3)
#  Trans_Local_Nom                :decimal(13, 2)  default(0.0)
#  Trans_FX                       :decimal(18, 10) default(0.0)
#  Trans_NIS                      :decimal(13, 2)  default(0.0)
#  Trans_CCF_B1                   :string(4)       default("0")
#  Trans_CCF_B2                   :string(4)       default("0")
#  Trans_Credit_Equiv_B1          :decimal(13, 2)  default(0.0)
#  Trans_Credit_Equiv_B2          :decimal(13, 2)  default(0.0)
#  Trans_Start                    :string(10)      not null
#  Trans_End                      :string(10)      not null
#  Trans_Tenure                   :string(5)       not null
#  Trans_Tenure_ST                :string(1)       not null
#  Trans_Pastdue                  :string(1)       not null
#  Trans_Pastdue_date             :string(10)      not null
#  Trans_Ref_date                 :string(10)      not null
#  Gen_Ledger_Shekel_Item_Code    :string(1)       not null
#  Gen_Ledger_Item_Code           :string(5)       not null
#  Gen_Ledger_Item_Type           :string(1)       not null
#  Dlnqnt_Princpl                 :decimal(13, 2)
#  Dlnqnt_Interest_Amt            :decimal(13, 2)
#  Dlnqnt_Linked_Amt              :decimal(13, 2)
#  Dlnqnt_Linked_Interest_Amt     :decimal(13, 2)
#  Accrued_Interest_Amt           :decimal(13, 2)
#  Trans_Pastdue_amount           :decimal(13, 2)
#  Total_Exposure                 :decimal(13, 2)
#  Total_Exposure_NIS             :decimal(13, 2)
#  Prov_Amount                    :decimal(13, 2)
#  Trans_Tenure_Left              :integer(4)
#  Interest_Account_id            :string(10)
#  Linked_Princpl_Account_id      :string(10)
#  Linked_Interest_Account_id     :string(10)
#  Dlnqnt_Linked_Account_id       :string(10)
#  Linked_Princpl_Diff_Amt        :decimal(13, 2)
#  Linked_Interest_Diff_Amt       :decimal(13, 2)
#  Linkage_Base_Type_Code         :string(2)
#  Bal_Sheet_Major_Item_Code      :string(3)
#  Sec_Bal_Sheet_Item_Code        :string(2)
#  Major_Yield_Category           :string(1)
#  Sec_Yield_Category             :string(1)
#  Instrument_Responsibility_Code :string(1)
#  Detail_Type_Code               :string(2)
#  Sec_Linkage_Base_Type_Code     :string(2)
#  GI_Item_Type_Code              :string(1)
#  Balance_Sheet_Position_Code    :string(1)
#  Other_Amt                      :decimal(13, 2)
#  Executing_Bank_Id              :integer(2)
#  Trans_Segment_Code             :string(3)
#  Trans_Segment_Det              :string(40)
#  Trans_Sub_Segment_code         :string(3)
#  Trans_Sub_Segment_Det          :string(40)
#  Trans_Marking_Past_Due_Code    :string(3)
#  Trans_Marking_Past_Due_Det     :string(100)
#  Trans_Markings_Other_code      :string(3)
#  Trans_Markings_Other_Det       :string(100)
#  Executing_Branch_Id            :integer(2)
#

