class AddPrimaryKeyAndGradeToAbetsCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :abets_courses, :id, :primary_key
    add_column :abets_courses, :grade, :integer, default:0
  end
end
