class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :student, required: false
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    student: 1,
    teacher: 2,
    director: 3,
    coordinator: 4
  }
end
