class InternshipCategory < ApplicationRecord
  validates :name, presence: true

  has_many :internships
end
