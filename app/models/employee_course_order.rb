class EmployeeCourseOrder < ApplicationRecord
  validates :employee_id, uniqueness: { scope: :course_id }

  belongs_to :employee
  belongs_to :course
end
