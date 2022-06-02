class AddReferencesInternshipAttendanceTypeToInternships < ActiveRecord::Migration[7.0]
  def change
    add_reference :internships, :internship_attendance_type, null: false, foreign_key: true
  end
end
