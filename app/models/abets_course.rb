class AbetsCourse < ApplicationRecord

  belongs_to :abet
  belongs_to :course

  def get_grade
    "#{grade}"
  end

end
