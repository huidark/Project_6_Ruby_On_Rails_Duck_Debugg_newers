class Project < ApplicationRecord
    # TODO: err: 1 error prohibited this project from being saved: Group must exist
    belongs_to :group, optional:true
end
