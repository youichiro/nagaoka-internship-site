class EmployeeDetail < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }

  belongs_to :employee
end
