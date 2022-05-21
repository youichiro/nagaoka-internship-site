class Course < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :event_date, presence: true

  belongs_to :course_category
  belongs_to :course_attendance_type
  has_many :employees, through: :employee_course_orders
  has_many :employee_course_orders
  has_many :students, through: :student_course_orders
  has_many :student_course_orders

  has_one_attached :thumbnail
end
