class AddColorColumnToCourseCatregories < ActiveRecord::Migration[7.0]
  def change
    add_column :course_categories, :color, :string
  end
end
