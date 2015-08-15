class Student < ActiveRecord::Base
  belongs_to :group
  has_many :criterias_students
  has_many :criterias, through: :criterias_students
end
