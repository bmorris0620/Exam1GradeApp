json.extract! quiz, :id, :quiz_id, :quiz_title, :grade, :course_id, :student_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)