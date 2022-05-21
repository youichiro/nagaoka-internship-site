class RemoveVideoUrlColumnFromInternships < ActiveRecord::Migration[7.0]
  def change
    remove_column :internships, :video_url, :string
  end
end
