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

    def default_text(text)
      on_click_function = "field = event.target; if (field.value=='#{text}') {field.value = '';}else {return false}"
      on_blur_function = "field = event.target; if (field.value=='') {field.value = '#{text}';}else {return false}"
          {:value => text, :onclick => on_click_function, :onblur => on_blur_function}
    end

end
