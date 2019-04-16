class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :abet_grades, :poor, 50
    change_column_default :abet_grades, :acceptable, 75
    change_column_default :abet_grades, :exceeds, 90
  end
end
