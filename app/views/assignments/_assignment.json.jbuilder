json.extract! assignment, :id, :assignment_id, :assignment_name, :grade, :course_id, :student_id, :created_at, :updated_at
json.url assignment_url(assignment, format: :json)