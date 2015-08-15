class Event < ActiveRecord::Base
  belongs_to :organizer
  has_many :students
end
