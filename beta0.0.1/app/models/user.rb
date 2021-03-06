class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 
  self.primary_key = :id

  has_many :wishes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # attr_accessible :id, :email,
  # Include default devise modules. Others available are:
#   :confirmable, :lockable, :timeoutable and :omniauthable
#  devise :database_authenticatable, 
#         :recoverable, :rememberable, :trackable, :validatable,
#	 :confirmable, :lockable, :timeoutable

#  enum role: [:user, :vip, :admin]
#  after_initialize :set_default_role, :if => :new_record?

#  def set_default_role
#    self.role ||= :user
#  end

def self.user_email
	self.email
end

end

