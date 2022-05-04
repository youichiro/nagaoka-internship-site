class AddColumnGifUrlToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :gif_url, :string
  end
end
