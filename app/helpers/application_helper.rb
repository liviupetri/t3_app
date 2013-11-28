module ApplicationHelper
	
	# construct the full title based on page title 
	def full_title(page_title)
		base_title = "T3App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
