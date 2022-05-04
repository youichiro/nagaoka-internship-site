class RenameColumnToCompanies < ActiveRecord::Migration[7.0]
  def change
    rename_column :companies, :manager_name, :contact_name
    rename_column :companies, :manager_email, :contact_email
    rename_column :companies, :phone_number, :contact_phone_number
  end
end
