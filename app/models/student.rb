class Student < ActiveRecord::Base
  belongs_to :group
  belongs_to :event
  has_many :category_students
  has_many :categories, through: :category_students
end
