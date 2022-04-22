class User < ApplicationRecord
    belongs_to :group, optional: true # A user is not initially assigned to a group
    has_many :reviews, dependent: :delete_all # Allows for deletion of a user to delete all of their reviews
    before_save { :email.downcase } 
    validates :name, presence: true, length: { maximum: 50 } # Ensures that the user-provided name is under 50 characters
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true # Valides email so it's under 255 characters using the VALID_EMAIL_REGEX, and it is not already in use
    validates :password_digest, presence: true, length: { minimum: 6 }
    has_secure_password
 
end