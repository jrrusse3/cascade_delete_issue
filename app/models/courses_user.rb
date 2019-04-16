class CoursesUser < ApplicationRecord
  belongs_to :course
  belongs_to :user

  has_many :abet_grades, :dependent => :delete_all
  has_many :abets, through: :abet_grades
  accepts_nested_attributes_for :abet_grades, allow_destroy: true
  accepts_nested_attributes_for :abets, allow_destroy: true

end
