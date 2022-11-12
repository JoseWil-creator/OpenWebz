class Prefix < ApplicationRecord
    has_many :courses, dependent: :destroy
    # Validations
    #validates_associated :courses
   # validates :prefix, length: {minimum: 3}
     validates :prefix, presence: true, length: {in: 2..4} # validates length from 2 to 4 characters
     validates :prefix, uniqueness: true # validates agaist database to see if its already there
end
#prefix = Prefix.new
#prefix.valid? # => false
#prefix.errors.messages {:prefix=>["Can't be blank", "is too short must be 3 characters", ""]}