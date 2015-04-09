class Type < ActiveRecord::Base


#  has_many :acts, :attachments, :events, :followers, :holdings, :monk_shugenja_attachments, :personalities, :regions, :rings, :senseis, :strongholds, :winds

 # accepts_nested_attributes_for :acts, :attachments, :events, :followers, :holdings, :monk_shugenja_attachments, :personalities, :regions, :rings, :senseis, :strongholds, :winds

  #self.search is class method declaration
  #def search would be an instance method declaration
  def self.search(query)
    where("typename like ?", "%#{query}")
  end

end



