class Type < ActiveRecord::Base


has_many :acts, inverse_of:  :type, 
	class_name: "Acts",
	foreign_key: "typeID"
has_many :attachments, inverse_of:  :type
has_many :events, inverse_of:  :type
has_many :followers, inverse_of:  :type
has_many :holdings, inverse_of:  :type
has_many :monk_shugenja_attachments, inverse_of:  :type
has_many :personalities, inverse_of:  :type
has_many  :regions, inverse_of:  :type
has_many  :rings, inverse_of:  :type
has_many  :senseis, inverse_of:  :type
has_many  :strongholds, inverse_of:  :type
has_many  :winds, inverse_of:  :type

 # accepts_nested_attributes_for :acts, :attachments, :events, :followers, :holdings, :monk_shugenja_attachments, :personalities, :regions, :rings, :senseis, :strongholds, :winds

  #self.search is class method declaration
  #def search would be an instance method declaration
  def self.search(query)
    where("typename like ?", "%#{query}%")
  end

end



