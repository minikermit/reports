# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def title(title)
			content_for(:title) { title }
	end

	def javascript(*files)
			content_for(:head) { javascript_include_tag(*files) }
	end

	def stylesheet(*files)
		content_for(:head) {stylesheet_link_tag(*files) }
	end

	# Use the following to pass a specific stylesheet to a view with <% stylesheet 'controller' %> in the view and controller.css as stylesheet

	#def stylesheet(*args)
	#	content_for(:head) {stylesheet_link_tag(*args) }
	#end  

end
