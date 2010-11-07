class JavascriptsController < ApplicationController

	def dynamic_entities
	@entities = Entity.find(:all)
		
	end

end
