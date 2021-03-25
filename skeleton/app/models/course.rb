class Course < ApplicationRecord

    belongs_to :users
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: 'User'

    belongs_to :courses
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: 'Course'
end
