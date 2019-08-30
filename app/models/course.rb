class Course < ApplicationRecord
    has_many :CourseModule, dependent: :destroy
end
