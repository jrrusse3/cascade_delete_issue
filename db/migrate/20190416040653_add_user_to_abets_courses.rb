class AddUserToAbetsCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :abets_courses, :user, foreign_key: true
  end
end
