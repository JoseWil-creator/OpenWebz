class RemoveStudentFromSection < ActiveRecord::Migration[7.0]
  def change
    remove_reference :sections, :student, foreign_key: true
  end
end
