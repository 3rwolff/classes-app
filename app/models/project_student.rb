class ProjectStudent < ApplicationRecord
    belongs_to :user
    belongs_to :project
    has_many :users, through: :project_students
end
