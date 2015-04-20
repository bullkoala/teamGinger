module LayoutHelper
	#Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Team Ginger"
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}"
		end 
	end

	def site_name
		"Team Ginger: Thunderdome"
	end

	def site_url
		"http://localhost:3000"
	end

	def meta_author
		"Team Ginger"
	end

	def meta_description
		"Welcome to Thunderdome"
	end

	def meta_keywords
		"UNCW, CSC455, CSC 455, Ginger, ginger"
	end
end