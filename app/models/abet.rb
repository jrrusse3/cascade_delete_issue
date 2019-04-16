class Abet < ApplicationRecord
  require 'csv'
  validates_uniqueness_of :name

  has_many :abet_grades
  has_many :courses_users, through: :abet_grades

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      begin
        Abet.create! row.to_hash
      rescue ActiveRecord::RecordInvalid => invalid
        puts invalid.record.errors
      rescue ActiveModel::UnknownAttributeError => invalid
        puts invalid.record.errors
      end
    end
  end

end
