class CategoryStudent < ActiveRecord::Base
  belongs_to :category
  belongs_to :student
end
