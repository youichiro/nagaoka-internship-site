class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description, default: ''
      t.date :event_date, null: false
      t.date :deadline
      t.string :place
      t.string :target
      t.boolean :is_online, default: false
      t.integer :acceptable_number
      t.text :others

      t.timestamps
    end
  end
end
