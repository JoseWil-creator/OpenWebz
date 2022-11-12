class Section < ApplicationRecord
  belongs_to :course
  belongs_to :semester
  has_and_belongs_to_many :students

  # validates crn from 10000 to 100000 and uniqueness in database
  validates :Crn, numericality: {greater_than: 10000, less_than: 100000}, uniqueness: true
  # Validations
  #validates_associated :students
  #validates :course, presence: true
  #validates :semester, presence: true
  #validates :Crn, length:{ is:5}

end
