class CourseModule < ApplicationRecord
  belongs_to :course
  default_scope -> { order(sort_by: :asc) }
end
