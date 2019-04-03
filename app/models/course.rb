class Course < ApplicationRecord
  require 'csv'
  validates_uniqueness_of :course_number

  has_many :courses_users
  has_many :users, through: :courses_users

  has_many :abets_courses, :dependent => :delete_all
  has_many :abets, through: :abets_courses
  accepts_nested_attributes_for :abets_courses, allow_destroy: true
  accepts_nested_attributes_for :abets, allow_destroy: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      begin
        Course.create! row.to_hash
      rescue ActiveRecord::RecordInvalid => invalid
        puts invalid.record.errors
      rescue ActiveModel::UnknownAttributeError => invalid
        puts invalid.record.errors
      end
    end
  end
end
