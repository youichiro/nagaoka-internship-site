class CreateInternshipCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :internship_categories do |t|
      t.string :name, null: false
      t.text :description, default: ''
      t.string :color

      t.timestamps
    end
  end
end
