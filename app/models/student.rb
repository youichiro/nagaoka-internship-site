class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  validates :agreement_terms, allow_nil: false, acceptance: true, on: :create

  has_one :student_detail, dependent: :destroy
  has_many :courses, through: :student_course_orders
  has_many :student_course_orders, dependent: :destroy
  has_many :internships, through: :internship_carts
  has_many :internship_carts, dependent: :destroy
  has_many :internships, through: :internship_orders
  has_many :internship_orders, dependent: :destroy

  accepts_nested_attributes_for :student_detail
end
