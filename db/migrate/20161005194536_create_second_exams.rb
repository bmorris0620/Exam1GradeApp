class CreateSecondExams < ActiveRecord::Migration[5.0]
  def change
    create_table :second_exams do |t|
      t.integer :second_exam_id
      t.string :grade
      t.integer :course_id
      t.integer :student_id
      t.belongs_to :course, index: true
      t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
