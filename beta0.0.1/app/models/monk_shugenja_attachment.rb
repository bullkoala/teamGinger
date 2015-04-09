class MonkShugenjaAttachment < ActiveRecord::Base
<<<<<<< HEAD

  def self.search(query)
  	where("title like ?", "%#{query}%")
  end

=======
  def self.search(query)
    where("title like ?", "%#{query}")
  end
>>>>>>> 315218d46063b119f18ad50ee1a61cd9d5a4cab3
end



