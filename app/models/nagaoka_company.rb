class NagaokaCompany < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  # validates :business_category_id, presence: true

  belongs_to :business_category
end
