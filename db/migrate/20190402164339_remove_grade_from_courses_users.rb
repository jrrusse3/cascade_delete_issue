class RemoveGradeFromCoursesUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses_users, :grade, :integer
  end
end
