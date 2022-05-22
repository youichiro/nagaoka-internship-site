class CreateInternshipOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_orders do |t|
      t.references :student, foreign_key: true, null: false
      t.references :internship, foreign_key: true, null: false
      t.boolean :is_contacted, default: false

      t.timestamps
    end

    add_index :internship_orders, [:student_id, :internship_id], unique: true
  end
end
