class Criteria < ActiveRecord::Base
  has_many :criterias_students
  has_many :students, through: :criterias_students
end
