class Wish < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :url, :notes, :email

	def self.current_user
		self.user
	end
end