class Act < ActiveRecord::Base
  def self.search(query)
  	where("actname like ?", "%#{query}")
  end

end
