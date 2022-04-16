class StudentDetail < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :birthday, presence: true
  validates :school_name, presence: true, length: { maximum: 100 }
  validates :department, presence: true, length: { maximum: 100 }

  belongs_to :student
end
