module ApplicationHelper
	def type_title(typeID)

		if typeID == 2
			@type_title = "Fate"
		elsif typeID == 1
			@type_title = "Dynasty"
		else
			@type_title = "Neither"
		end
	end
#	def login_status() 
#		if user_signed_in?
#			"#{"You are  logged in as "} #{current_user.email}"
#		else
#			"#{"You are not logged into Team Ginger's world"}"
#		end
#	end
end