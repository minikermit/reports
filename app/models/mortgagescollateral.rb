class Mortgagescollateral < ActiveRecord::Base
	set_table_name "B2TA_XPORT_Mortgage_Collaterals"
end

# == Schema Information
#
# Table name: B2TA_XPORT_Mortgage_Collaterals
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
#  Type_of_record              :string(10)      not null
#  Bank_id                     :string(4)       not null
#  Branch_id                   :string(3)       not null
#  Callat_mortg_Nr             :string(15)
#  Limit_nr                    :string(15)
#  Count_Nr                    :string(50)
#  Collateral_Nr               :string(15)
#  Callat_mortg_Nom            :decimal(13, 2)
#  Callat_mortg_Curr           :string(3)
#  Callat_mortg_Local_Currency :string(3)
#  Callat_mortg_Local_Nom      :decimal(13, 2)
#  Callat_mortg_FX             :decimal(18, 10)
#  Callat_mortg_NIS            :decimal(13, 2)
#  Collat_Mortg_Local          :decimal(13, 2)
#  Collat_Mortg_NIS            :decimal(13, 2)
#  Collat_Mortg_3rd_Indic      :string(1)
#  Collat_Mortg_3rd_Amt        :decimal(13, 2)
#  Collat_Mortg_3rd_Rank       :string(1)
#  Collat_Mortg_Prop           :string(1)
#  Collat_Mortg_Prop_Occ       :string(1)
#  Collat_Mortg_Enforc         :string(1)
#  Collat_Mortg_Owner          :string(1)
#  Collat_Mortg_Own_CIF        :string(15)
#  Collat_Mortg_LTV_Int        :decimal(18, 10)
#  Callat_Mortg_Prop_Val_Orig  :decimal(13, 2)
#  Callat_Mortg_Prop_Curr      :string(3)
#  Callat_Mortg_Prop_Val_local :decimal(13, 2)
#  Callat_Mortg_Prop_FX        :decimal(18, 10)
#  Callat_Mortg_Prop_Val_NIS   :decimal(13, 2)
#  Callat_Mortg_Prop_Dat       :datetime
#  Collat_Mortg_Landreg        :string(1)
#  Collat_Mortg_Warn           :string(1)
#  Collat_Mortg_Rights         :string(1)
#  Collat_Mortg_Other          :string(1)
#  Collat_Mortg_Ref_Date       :datetime
#  Insurance_Comp_Nr           :string(15)
#  Insurance_Type_Code         :string(1)
#  Insurance_Enforc            :string(1)
#  Insurance_Amount_Local      :decimal(13, 2)  default(0.0)
#  Insurance_Amount_NIS        :decimal(13, 2)
#  Insurance_Start             :datetime
#  Insurance_End               :datetime
#  Executing_Bank_Id           :integer(2)
#  Second_Lien_Ind             :string(1)
#  Executing_Branch_Id         :integer(2)
#

