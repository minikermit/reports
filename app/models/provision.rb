class Provision < ActiveRecord::Base
	set_table_name "B2TA_XPORT_Provisions"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Provisions
#
#  id                      :integer(8)      not null, primary key
#  Group_id                :string(50)      not null
#  Entity_id               :string(50)      not null
#  Source_id               :string(50)      not null
#  DownloadDate            :datetime        not null
#  Record_Creation_Date    :datetime        not null
#  Record_Creator          :string(50)
#  Record_Application      :string(50)
#  Value_Month             :string(7)       not null
#  Value_Date              :string(10)      not null
#  Executing_Date          :string(10)      not null
#  Type_of_record          :string(10)      default("PROVISIONS"), not null
#  Bank_id                 :string(4)       not null
#  Branch_id               :string(3)       not null
#  Trans_nr                :string(15)
#  Count_CIF               :string(50)
#  Prov_Amount             :decimal(13, 2)  default(0.0)
#  Prov_Amount_Local       :decimal(13, 2)  default(0.0)
#  Prov_Amt_Pincpl         :decimal(13, 2)  default(0.0)
#  Prov_Amt_Pincpl_Local   :decimal(13, 2)  default(0.0)
#  Prov_Amt_Interest       :decimal(13, 2)  default(0.0)
#  Prov_Amt_Interest_Local :decimal(13, 2)  default(0.0)
#  Prov_Curr               :string(3)
#  Prov_Local_Currency     :string(3)
#  Prov_FX                 :decimal(18, 10) default(0.0)
#  Prov_Amount_NIS         :decimal(13, 2)  default(0.0)
#  Prov_Amount_Gross       :decimal(13, 2)  default(0.0)
#  Prov_Collateral         :decimal(13, 2)  default(0.0)
#  Prov_Amount_Net         :decimal(13, 2)  default(0.0)
#  Prov_Date_First         :string(10)
#  Prov_Date_Last          :string(10)
#  Prov_Pastdue            :string(1)
#  Prov_Pastdue_Date       :string(10)
#  Prov_Bad_Debt           :string(1)
#  Prov_Doubtful_Debt      :string(1)
#  Prov_Debt_Restr         :string(1)
#  Prov_Debt_Restr_WI      :string(1)
#  Prov_Special_Terms      :string(1)
#  Prov_Debt_Arrears       :string(1)
#  Prov_Debt_Temp_Arr      :string(1)
#  Prov_Debt_Not_Acc_Inc   :string(1)
#  Prov_Debt_Und_Spec_Sup  :string(1)
#  Prov_Problem_Debt       :string(1)
#  Prov_Ref_Date           :string(10)
#  Prov_Account_id         :string(10)
#  Prov_SNG                :decimal(13, 2)  default(0.0)
#  Prov_SNG_Local          :decimal(13, 2)  default(0.0)
#  Prov_SNG_NIS            :decimal(13, 2)  default(0.0)
#  Executing_Bank_Id       :integer(2)
#  Executing_Branch_Id     :integer(2)
#

