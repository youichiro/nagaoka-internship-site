class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :phone_number, presence: true
  validates :business_category_id, presence: true
  validates :address, presence: true, length: { maximum: 100 }
  validates :manager_name, presence: true, length: { maximum: 100 }
  validates :manager_email, presence: true
  validates :number_of_employee, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_blank: true

  belongs_to :business_category
  has_many :employees, dependent: :destroy
  has_many :internships, dependent: :destroy
  has_one_attached :video
end
