class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :course_name
      t.integer :capacity

      t.timestamps
    end
  end
end
