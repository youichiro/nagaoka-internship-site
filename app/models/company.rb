class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :business_category_id, presence: true
  validates :address, presence: false, length: { maximum: 100 }
  validates :contact_phone_number, presence: true
  validates :contact_name, presence: true, length: { maximum: 100 }
  validates :contact_email, presence: true
  validates :number_of_employee, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_blank: true

  belongs_to :business_category
  has_many :employees, dependent: :destroy
  has_many :internships, dependent: :destroy
  has_one_attached :thumbnail

  def image_urls
    array = [thumbnail.representation(resize_to_limit: [800, 800])] if thumbnail.representable?
    array = ['no_image.png'] if array.empty?
    array
  end
end
