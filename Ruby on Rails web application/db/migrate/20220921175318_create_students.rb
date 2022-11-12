class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.integer :student_id
      t.string :student_email
      t.integer :student_phone
      t.string :physical_address

      t.timestamps
    end
  end
end
