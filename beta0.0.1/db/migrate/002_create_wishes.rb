class CreateWishes < ActiveRecord::Migration
	def self.up
		create_table :wishes, {:id => false} do |t|
			t.integer	:id
			t.string	:title
			t.string	:url
			t.string	:notes
		end
	end

	def self.down
		drop_table :wishes
	end
end