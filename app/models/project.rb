class Project < ApplicationRecord
    belongs_to :group, optional: true # Projects belong to groups, but may not initially
    has_many :reviews, dependent: :delete_all # Projects contain reviews about each memeber

    validates :enddate, date: { after: :startdate}
end
