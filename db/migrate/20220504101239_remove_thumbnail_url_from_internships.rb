class RemoveThumbnailUrlFromInternships < ActiveRecord::Migration[7.0]
  def change
    remove_column :internships, :thumbnail_url, :string
  end
end
