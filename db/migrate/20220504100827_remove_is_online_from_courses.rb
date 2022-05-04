class RemoveIsOnlineFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :is_online, :boolean
  end
end
