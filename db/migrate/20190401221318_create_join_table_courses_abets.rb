class CreateJoinTableCoursesAbets < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :abets do |t|
      # t.index [:course_id, :abet_id]
      # t.index [:abet_id, :course_id]
    end
  end
end
