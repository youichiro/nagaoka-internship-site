class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable
end
