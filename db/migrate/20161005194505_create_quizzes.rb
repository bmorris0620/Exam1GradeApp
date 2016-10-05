class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.integer :quiz_id
      t.string :quiz_title
      t.string :grade
      t.integer :course_id
      t.integer :student_id
      t.belongs_to :course, index: true
      t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
