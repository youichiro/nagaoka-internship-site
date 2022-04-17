class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|
      t.references :company, foreign_key: true, null: false
      t.string :title, null: false
      t.text :description, default: ''
      t.date :start_date
      t.date :end_date
      t.date :deadline
      t.string :location, default: ''
      t.string :target, default: ''
      t.string :video_url
      t.string :thumbnail_url
      t.integer :acceptable_number
      t.text :others, defalut: ''

      t.timestamps
    end
  end
end
