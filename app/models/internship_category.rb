class InternshipCategory < ApplicationRecord
  validates :name, presence: true

  has_many :internships, dependent: :restrict_with_exception
end
