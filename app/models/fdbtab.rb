class Fdbtab < ActiveRecord::Base
	# set_table_name "FIMIS_TA_SRC_OLY_0_Nomenclatures_FDBTAB"

#require 'comma'

# ===============
# = CSV support =
# ===============
  comma do |fdbtab| # implicitly named :default
    fdbtab.id
    fdbtab.TBID
    fdbtab.TBCODE
  end



end

# == Schema Information
#
# Table name: FIMIS_TA_SRC_OLY_0_Nomenclatures_FDBTAB
#
#  TBID                 :string(3)       not null
#  TBCODE               :string(14)      not null
#  TBETAT               :string(1)       not null
#  TBDTOU               :string(6)       not null
#  TBDTMU               :string(6)       not null
#  TBOPRN               :string(7)       not null
#  TBDES1               :string(35)      not null
#  TBDES2               :string(35)      not null
#  TBDES3               :string(35)      not null
#  TBDES4               :string(35)      not null
#  TBCOMP               :string(73)      not null
#  TBNBRM               :integer
#  fimis_status         :string(1)
#  Group_Identifier     :string(50)
#  Entity_Identifier    :string(50)
#  Source_Identifier    :string(50)
#  Record_Creation_Date :datetime
#  Source_Package       :string(50)
#  id                   :integer(8)      not null, primary key
#

