class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :rurals
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, 
         :validatable

  attr_accessor :login

  def email_required?
    false
  end
 
  def email_changed?
    false
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end

end
