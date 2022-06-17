class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  validates :agreement_terms, allow_nil: false, acceptance: true, on: :create
  validate :password_complexity

  has_one :student_detail, dependent: :destroy
  has_many :courses, through: :student_course_orders
  has_many :student_course_orders, dependent: :destroy
  has_many :internships, through: :internship_carts
  has_many :internship_carts, dependent: :destroy
  has_many :internships, through: :internship_orders
  has_many :internship_orders, dependent: :destroy

  accepts_nested_attributes_for :student_detail

  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/
    errors.add :password, "長さは8〜70文字とし、大文字と小文字と数字と特殊文字をそれぞれ1文字以上含める必要があります。"
  end
end
