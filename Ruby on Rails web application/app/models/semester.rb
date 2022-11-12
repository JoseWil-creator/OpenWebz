class Semester < ApplicationRecord
    # Semester has many sections and dependent will nullify if a sections is deleted
    has_many :sections, dependent: :destroy

    validates :year, numericality: {greater_than_or_equal_to: 2022, less_than: 2030} # Validates year 2022 to 2030
    validates :semester, acceptance: { accept: ['Fall', 'Summer', 'Spring'], 
        message: ': Only Fall, Spring or Summer will be accepted!' } #  Ensures that user can only enter true semesters
    #validates_associated :sections
end
