class Enrollment < ApplicationRecord

    belongs_to :users,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User
    
    belongs_to :courses,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course

    add_index :users, :student_id
    add_index :courses, :course_id
end
