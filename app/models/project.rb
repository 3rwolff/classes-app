class Project < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  has_many :users, through: :project_teachers
end
