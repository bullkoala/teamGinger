class Type < ActiveRecord::Base

	def self.search(query)
		where("typename like ?", "%#{query}")
	end

end



