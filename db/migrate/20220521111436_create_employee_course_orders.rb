class CreateEmployeeCourseOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_course_orders do |t|
      t.references :employee, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false

      t.timestamps
    end

    add_index :employee_course_orders, [:employee_id, :course_id], unique: true
  end
end
