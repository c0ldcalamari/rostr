class Group < ActiveRecord::Base
  belongs_to :event
  has_many :students
end
