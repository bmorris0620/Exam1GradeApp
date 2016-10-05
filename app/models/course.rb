class Course < ApplicationRecord
	has_and_belongs_to_many :students
	has_and_belongs_to_many :assignments
	has_and_belongs_to_many :quizzes
	has_one :first_exam
	has_one :second_exam
	has_and_belongs_to_many :enrollments
end
