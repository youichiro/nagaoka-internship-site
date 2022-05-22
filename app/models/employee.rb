class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  validates :agreement_terms, allow_nil: false, acceptance: true, on: :create

  belongs_to :company
  has_one :employee_detail, dependent: :destroy
  has_many :courses, through: :employee_course_orders
  has_many :employee_course_orders, dependent: :destroy

  accepts_nested_attributes_for :employee_detail
end
