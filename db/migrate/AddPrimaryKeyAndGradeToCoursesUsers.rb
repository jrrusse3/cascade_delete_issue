class AddPrimaryKeyAndGradeToCoursesUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :courses_users, :id, :primary_key
    add_column :courses_users, :grade, :integer, default:0
  end
end