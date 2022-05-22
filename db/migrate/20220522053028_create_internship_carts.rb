class CreateInternshipCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_carts do |t|
      t.references :student, foreign_key: true, null: false
      t.references :internship, foreign_key: true, null: false

      t.timestamps
    end

    add_index :internship_carts, [:student_id, :internship_id], unique: true
  end
end
