class RemoveSectionFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_reference :students, :section, foreign_key: true
  end
end
