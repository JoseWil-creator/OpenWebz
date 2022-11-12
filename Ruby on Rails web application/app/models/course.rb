class Course < ApplicationRecord
  belongs_to :prefix
  # if you want to use database should allow null so remove null
  has_many :sections, dependent: :destroy
  # validates number range from 1000 to 5000 and its uniqueness in database
  validates :number, numericality: {greater_than_or_equal_to: 1000, less_than: 5000}, uniqueness: true 
  # Validates name from 10 to 10 characters only
  validates :name, length: {in: 10..50}
  #validates :prefix, presence: true
  #validates_associated :sections
end
