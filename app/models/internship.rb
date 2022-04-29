class Internship < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: { scope: :company_id }
  # validates :end_date, comparison: { greater_than: :start_date }

  belongs_to :company
  has_one_attached :thumbnail
end
