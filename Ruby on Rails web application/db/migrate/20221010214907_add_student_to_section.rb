class AddStudentToSection < ActiveRecord::Migration[7.0]
  def change
    add_reference :sections, :student, foreign_key: true
  end
end
