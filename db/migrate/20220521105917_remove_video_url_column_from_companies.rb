class RemoveVideoUrlColumnFromCompanies < ActiveRecord::Migration[7.0]
  def change
    remove_column :companies, :video_url, :string
  end
end
