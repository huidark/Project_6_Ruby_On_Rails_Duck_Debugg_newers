class Project < ApplicationRecord
    belongs_to :group, optional: true
    has_many :reviews
end
