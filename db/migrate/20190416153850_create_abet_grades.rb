class CreateAbetGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :abet_grades do |t|
      t.references :courses_user, foreign_key: true
      t.references :abet, foreign_key: true
      t.integer :poor
      t.integer :acceptable
      t.integer :exceeds
      t.integer :grade

      t.timestamps
    end
  end
end
