class AddSectionToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :section, foreign_key: true
  end
end
