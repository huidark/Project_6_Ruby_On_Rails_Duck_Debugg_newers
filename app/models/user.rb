class User < ApplicationRecord
    belongs_to :group, optional: true
    has_many :reviews, dependent: :delete_all
    before_save { :email.downcase } # doesn't work
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    validates :password_digest, presence: true, length: { minimum: 6 }
    has_secure_password
end