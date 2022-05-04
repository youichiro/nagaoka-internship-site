class AddReferencesCourseAttendanceTypeToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :course_attendance_type, null: false, foreign_key: true
  end
end
