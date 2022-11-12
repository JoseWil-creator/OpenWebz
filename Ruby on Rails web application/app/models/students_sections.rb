class StudentsSections < ApplicationRecord
  belongs_to :student
  belongs_to :section
end
