class Holding < ActiveRecord::Base
	belongs_to :type

	def self.search(query)
		where("title like ?", "%#{query}%")
	end
end