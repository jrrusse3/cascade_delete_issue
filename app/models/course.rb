class Course < ApplicationRecord
  require 'csv'
  validates_uniqueness_of :course_number
  has_and_belongs_to_many :abets
  has_and_belongs_to_many :users
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
