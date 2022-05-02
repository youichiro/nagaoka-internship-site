class Course < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :event_date, presence: true

  belongs_to :course_category
  has_one_attached :thumbnail
  has_one_attached :video
end
