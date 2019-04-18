class AddPoorGradesToAbetGrades < ActiveRecord::Migration[5.2]
  def change
    add_column :abet_grades, :poor_grade, :integer
    add_column :abet_grades, :exceeds_grade, :integer
  end
end
