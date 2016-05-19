class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  before_save :email_downcase
  
  validates :username, presence: :true, uniqueness: :true
  validates :email, presence: :true, uniqueness: :true, format: {with: VALID_EMAIL_REGEX} 
  has_secure_password
  
  def email_downcase
    self.email = email.downcase
  end
end
