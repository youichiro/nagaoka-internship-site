class CreateStudentCourseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :student_course_orders do |t|
      t.references :student, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false

      t.timestamps
    end

    add_index :student_course_orders, [:student_id, :course_id], unique: true
  end
end
