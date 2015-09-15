class Participant < ActiveRecord::Base
  belongs_to :event
  has_many :categories
end
