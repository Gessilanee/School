class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :class_school
end
