class Project < ApplicationRecord
    belongs_to :group, optional: true # Projects belong to groups, but may not initially
    has_many :reviews # Projects contain reviews about each memeber
end
