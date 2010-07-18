class ParMapping < ActiveRecord::Base
	set_table_name "PAR_Mapping"
	# set_primary_key "Fimis_Identifier"
	validates_presence_of :Group_Identifier, :Entity_Identifier, :Information_Mapped, :Source_code
	validates_inclusion_of :Group_Identifier, :in => %( Hapoalim Switzerland Ltd. ), :message => "Group Identifier is not correct !"
	validates_inclusion_of :Entity_Identifier, :in => %( Zurich Singapore Luxembourg ), :message => "Entity Identifier is not correct !"
	named_scope :valid, :conditions => { :Record_Validity => true }
end
