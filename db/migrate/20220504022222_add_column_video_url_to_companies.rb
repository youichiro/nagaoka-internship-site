class AddColumnVideoUrlToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :video_url, :string
  end
end
