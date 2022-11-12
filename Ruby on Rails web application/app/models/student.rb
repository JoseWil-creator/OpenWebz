class Student < ApplicationRecord
has_and_belongs_to_many :sections
# https://guides.rubyonrails.org/active_record_validations.html#uniqueness
# Validations
#validates_associated :sections
#validates :student_name, length: {in: 1..50}, uniqueness: true
#validates :student_id, numericality: {greater_than: 9000000000, less_than: 9999999999}
validates :student_id, uniqueness: true
#validates :student_email, uniqueness: true
#validates :student_phone, uniqueness: true
#validates :physical_address, lenght: {is: 20..30}



end
