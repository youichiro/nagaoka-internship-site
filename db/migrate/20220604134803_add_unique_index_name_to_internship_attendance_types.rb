class AddUniqueIndexNameToInternshipAttendanceTypes < ActiveRecord::Migration[7.0]
  def change
    add_index :internship_attendance_types, :name, unique: true
  end
end
