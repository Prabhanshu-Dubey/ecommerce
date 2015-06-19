class User < ActiveRecord::Base
  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def name
    if self.first_name.present? && self.last_name.present?
  	   self.first_name + " " + self.last_name
    elsif self.first_name.present?
      self.first_name
    elsif self.last_name.present?
      self.last_name
    end
  end

  def isAdmin?
  	return true if self.role.present? && self.role.name == 'admin'
  	return false
  end
end
