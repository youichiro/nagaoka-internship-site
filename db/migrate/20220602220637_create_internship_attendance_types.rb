class CreateInternshipAttendanceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_attendance_types do |t|
      t.string name, null: false

      t.timestamps
    end
  end
end
