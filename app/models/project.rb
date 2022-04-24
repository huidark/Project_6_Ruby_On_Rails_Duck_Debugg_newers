class Project < ApplicationRecord
    has_many :reviews, dependent: :delete_all # Projects contain reviews about each memeber
    belongs_to :group # Projects belong to groups
    

    validates :enddate, date: { after: :startdate}
    validates :startdate, date: {  after_or_equal_to: Proc.new { Date.today}}
end
