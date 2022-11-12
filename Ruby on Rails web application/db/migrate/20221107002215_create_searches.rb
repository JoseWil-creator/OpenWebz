class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :student_id
      t.string :email
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
