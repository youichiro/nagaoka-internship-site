class AddColumnAnnouncementToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :announcement, :text
  end
end
