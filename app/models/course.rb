class Course < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :event_date, presence: true

  belongs_to :course_category
  belongs_to :course_attendance_type
  has_one_attached :thumbnail
end
