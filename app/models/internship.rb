class Internship < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  # validates :end_date, comparison: { greater_than: :start_date }

  belongs_to :company
end
