class CreateStudentDetail < ActiveRecord::Migration[7.0]
  def change
    create_table :student_details do |t|
      t.references :student, foreign_key: true, null: false, index: { unique: true }
      t.string :name, null: false
      t.boolean :disable_notification, default: false
      t.date :birthday, null: false
      t.string :school_name, null: false
      t.string :department, null: false

      t.timestamps
    end
  end
end
