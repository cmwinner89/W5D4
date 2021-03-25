class User < ApplicationRecord

    has_many :courses,
        # primary_key: :id,
        through: :enrollments
        source: :course

end
