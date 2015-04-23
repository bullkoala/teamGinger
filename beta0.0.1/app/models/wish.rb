class Wish < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :url, :email

	def self.current_user
		self.user
	end
end