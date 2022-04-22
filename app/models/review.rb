class Review < ApplicationRecord
    # Each review is assigned to a project and a user, it cannot exist without either
    belongs_to :user, optional: true
    belongs_to :project, optional: true

    # Score must be between 0-10
    validates :score, numericality: {greater_than_or_equal_to: 0, only_integer: true} 
    validates :score, numericality: {less_than_or_equal_to: 10, only_integer: true}
    validates :comment, presence: true, length: { maximum: 100 }
end
