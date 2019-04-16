class AbetsCourse < ApplicationRecord

  belongs_to :abet
  belongs_to :course
  belongs_to :user, optional: true

  def get_grade
    "#{grade}"
  end

end
