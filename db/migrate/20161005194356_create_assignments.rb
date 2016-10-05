class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :assignment_id
      t.string :assignment_name
      t.string :grade
      t.integer :course_id
      t.integer :student_id
      t.belongs_to :course, index: true
      t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
