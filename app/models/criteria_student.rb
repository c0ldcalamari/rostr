class CriteriaStudent < ActiveRecord::Base
  belongs_to :criteria
  belongs_to :student
end
