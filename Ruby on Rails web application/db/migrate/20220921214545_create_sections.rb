class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.integer :Crn
      t.references :course, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
