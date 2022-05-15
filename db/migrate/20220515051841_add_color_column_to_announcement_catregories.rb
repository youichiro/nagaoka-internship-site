class AddColorColumnToAnnouncementCatregories < ActiveRecord::Migration[7.0]
  def change
    add_column :announcement_categories, :color, :string
  end
end
