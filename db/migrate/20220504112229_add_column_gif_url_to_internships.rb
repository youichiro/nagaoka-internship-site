class AddColumnGifUrlToInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :gif_url, :string
  end
end
