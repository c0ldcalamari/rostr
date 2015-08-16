class Category < ActiveRecord::Base
  has_many :category_students
  has_many :students, through: :category_students
end
