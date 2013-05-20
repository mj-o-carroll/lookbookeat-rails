class User < ActiveRecord::Base
  attr_accessible :u_name, :u_email, :password, :password_confirmation, :username, :u_phone, :u_address, :u_phone, :mailing_list
  has_secure_password

  has_many :booking
  has_many :comments

before_save do |user| 
      
        user.u_email = u_email.downcase 
        user.remember_token = SecureRandom.urlsafe_base64
        end
  validates :u_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :u_email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end