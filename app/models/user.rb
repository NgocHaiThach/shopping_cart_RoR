class User < ApplicationRecord
    before_save { email.downcase! }
    validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: true
    # VALID_PHONE_REGEX = (84|0[3|5|7|8|9])+([0-9]{8})\b
    # validates :phone, 
    # format: {with: VALID_PHONE_REGEX}
    # validates :address, length: {maximum: 255}
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}, allow_nil: true
end
