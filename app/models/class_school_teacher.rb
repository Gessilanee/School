class ClassSchoolTeacher < ApplicationRecord
  belongs_to :class_school
  belongs_to :teacher
end
