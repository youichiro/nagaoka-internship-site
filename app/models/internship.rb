class Internship < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: { scope: :company_id }
  # validates :end_date, comparison: { greater_than: :start_date }

  belongs_to :company
  has_one_attached :thumbnail
  has_one_attached :video
  has_one_attached :gif

  def terms
    if start_date.present? && end_date.present?
      (end_date - start_date).to_i
    end
  end

  def vimeo_id
    return unless video_url
    video_url.split('/').last
  end
end
