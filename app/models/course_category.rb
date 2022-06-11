class CourseCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }

  has_many :courses, dependent: :restrict_with_exception

  def bg_color
    color.present? ? color : '#42AAC7'
  end
end
