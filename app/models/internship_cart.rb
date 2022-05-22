class InternshipCart < ApplicationRecord
  validates :student_id, uniqueness: { scope: :internship_id }

  belongs_to :student
  belongs_to :internship
end
