class AbetGrade < ApplicationRecord
  belongs_to :courses_user
  belongs_to :abet
end
