class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.references :announcement_category, foreign_key: true, null: false
      t.string :title, null: false
      t.text :contents, null: false

      t.timestamps
    end
  end
end
