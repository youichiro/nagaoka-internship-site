class AddIsPublicColumnToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :is_public, :boolean, default: true
  end
end
