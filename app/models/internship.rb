class Internship < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: { scope: :company_id }
  # validates :end_date, comparison: { greater_than: :start_date }

  belongs_to :company
  has_many :students, through: :internship_carts
  has_many :internship_carts, dependent: :destroy
  has_many :students, through: :internship_orders
  has_many :internship_orders, dependent: :destroy

  has_one_attached :thumbnail

  def terms
    if start_date.present? && end_date.present?
      (end_date - start_date).to_i
    end
  end

  def image_urls
    array = []
    array = array + [gif_url] if gif_url.present?
    array = array + [thumbnail.representation(resize_to_limit: [800, 800])] if thumbnail.representable?
    array = ['no_image.png'] if array.empty?
    array
  end
end
