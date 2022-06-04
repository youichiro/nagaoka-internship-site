class AddUniqueIndexNameToInternshipCategories < ActiveRecord::Migration[7.0]
  def change
    add_index :internship_categories, :name, unique: true
  end
end
