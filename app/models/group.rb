class Group < ApplicationRecord
    has_many :users, dependent: :nullify # Groups have users, if group is deleted; it will not delete the users
    has_many :projects, dependent: :delete_all # Groups have projects, when a group is deleted, its projects are also
end
