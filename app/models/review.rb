class Review < ApplicationRecord
    belongs_to :users, optional: true
    validates :score, numericality: {greater_than_or_equal_to: 0, only_integer: true}
    validates :score, numericality: {less_than_or_equal_to: 10, only_integer: true}
end
