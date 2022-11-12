class CreateSectionsStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :sections_students do |t|
      t.references :student, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
