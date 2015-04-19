module ApplicationHelper
	#Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Team Ginger"
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}"
		end 
	end

#	private
#	def login_status() 
#		if user_signed_in?
#			"#{"You are  logged in as "} #{current_user.email}"
#		else
#			"#{"You are not logged into Team Ginger's world"}"
#		end
#	end
end