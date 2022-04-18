class User < ApplicationRecord
    before_save { :Email.downcase } # doesn't work
    validates :Name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :Email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    validates :password_digest, presence: true, length: { minimum: 6 }
    has_secure_password
end