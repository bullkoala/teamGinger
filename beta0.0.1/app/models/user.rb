class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable,
	 :confirmable, :lockable, :timeoutable

#  enum role: [:user, :vip, :admin]
#  after_initialize :set_default_role, :if => :new_record?

#  def set_default_role
#    self.role ||= :user
#  end

end
