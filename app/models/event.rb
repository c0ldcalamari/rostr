class Event < ActiveRecord::Base
  belongs_to :organizer
  has_many :groups
  has_many :categories
  has_many :students
end
