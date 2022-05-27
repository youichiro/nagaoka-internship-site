class AddIsPublicColumnToInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :is_public, :boolean, default: true
  end
end
