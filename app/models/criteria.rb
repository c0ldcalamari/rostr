class Criteria < ActiveRecord::Base
  has_many :criteria_students
  has_many :students, through: :criteria_students
end
