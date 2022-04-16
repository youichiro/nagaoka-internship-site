class CreateEmployeeDetail < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_details do |t|
      t.references :employee, foreign_key: true, null: false, index: { unique: true }
      t.string :name, null: false

      t.timestamps
    end
  end
end
