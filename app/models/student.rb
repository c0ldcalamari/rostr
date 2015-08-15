class Student < ActiveRecord::Base
  has_many :criterias_students
  has_many :criterias, through: :criterias_students
end
