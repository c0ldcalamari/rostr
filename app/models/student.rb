class Student < ActiveRecord::Base
  belongs_to :group
  has_many :criteria_students
  has_many :criterias, through: :criteria_students
end
