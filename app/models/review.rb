class Review < ApplicationRecord
    belongs_to :user
    belongs_to :project
    validates :score, numericality: {greater_than_or_equal_to: 0, only_integer: true}
    validates :score, numericality: {less_than_or_equal_to: 10, only_integer: true}
    validates :comment, presence: true, length: { maximum: 100 }
end
