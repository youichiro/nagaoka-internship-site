class InternshipAttendanceType < ApplicationRecord
  validates :name, presence: true

  has_many :internships
end
