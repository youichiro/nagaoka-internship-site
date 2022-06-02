class AddReferencesInternshipCategoryToInternships < ActiveRecord::Migration[7.0]
  def change
    add_reference :internships, :internship_category, null: false, foreign_key: true
  end
end
