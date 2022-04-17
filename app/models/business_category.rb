class BusinessCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }

  has_many :companies, dependent: :restrict_with_exception
end
