class Product < ActiveRecord::Base
	set_table_name "DIM_Product"
	set_primary_key "FiMIS_Identifier"
end
