class Project < ApplicationRecord
    belongs_to :group, optional: true
end
