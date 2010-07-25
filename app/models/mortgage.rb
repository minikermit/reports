class Mortgage < ActiveRecord::Base
	set_table_name "B2TA_XPORT_Mortgage_Loans_Subloans"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Mortgage_Loans_Subloans
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
#  Type_of_record               :string(10)      not null
#  Bank_id                      :string(4)       not null
#  Branch_id                    :string(3)       not null
#  Trans_Nr                     :string(15)
#  Collateral_Nr                :string(15)
#  Account_id                   :string(10)
#  Count_CIF                    :string(50)
#  Limit_nr                     :string(15)
#  Trans_Code                   :string(10)
#  Trans_Text                   :string(40)
#  Trans_Mortg_LTV_Int          :decimal(13, 2)
#  Orig_Loan_Amt                :decimal(13, 2)
#  Asset_Val                    :decimal(13, 2)
#  Trans_Nom                    :decimal(13, 2)
#  Trans_Curr                   :string(3)
#  Trans_Local_Currency         :decimal(13, 2)
#  Trans_Local_Nom              :decimal(13, 2)
#  Trans_Fx                     :decimal(18, 10)
#  Trans_NIS                    :decimal(13, 2)
#  Trans_Start                  :datetime
#  Trans_End                    :datetime
#  Trans_Tenure                 :integer(4)
#  Tansas_Tenure_ST             :string(1)
#  Trans_Pastdue                :string(1)
#  Trans_Pastdue_Date           :datetime
#  Trans_Ref_Date               :datetime
#  Gen_Ledger_Shekel_Item_Code  :string(1)
#  Gen_Ledger_Item_Code         :string(5)
#  Gen_Ledger_Item_Type         :string(1)
#  Total_Exposure               :decimal(13, 2)
#  Total_Exposure_NIS           :decimal(13, 2)
#  Dlnqnt_Princpl               :decimal(13, 2)
#  Dlnqnt_Interest_Amt          :decimal(13, 2)
#  Dlnqnt_Linked_Amt            :decimal(13, 2)
#  Dlnqnt_Linked_Interest_Amt   :decimal(13, 2)
#  Dlnqnt_Accrued_Interest      :decimal(13, 2)
#  Linked_Princpl_Diff_Amt      :decimal(13, 2)
#  Linked_Interest_Diff_Amt     :decimal(13, 2)
#  Other_Amt                    :decimal(13, 2)
#  Executing_Bank_Id            :integer(2)
#  Trans_Segment_Code           :string(3)
#  Trans_Segment_Det            :string(40)
#  Trans_Sub_Segment_code       :string(3)
#  Trans_Sub_Segment_Det        :string(40)
#  Trans_Markings_Past_Due_code :string(3)
#  Trans_Markings_Past_Due_Det  :string(100)
#  Trans_Markings_Other_code    :string(3)
#  Trans_Markings_Other_Det     :string(100)
#  Mortgage_Purpose_Det         :string(100)
#  Mortgage_Purpose_Code        :string(3)
#  Executing_Branch_Id          :integer(2)
#

