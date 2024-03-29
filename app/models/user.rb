class User < ApplicationRecord
  require 'csv'
  validates_uniqueness_of :email

  has_many :courses_users
  has_many :courses, through: :courses_users

  has_many :abets_courses, :dependent => :delete_all
  accepts_nested_attributes_for :abets_courses, allow_destroy: true


  def full_name
    "#{fname} #{lname}"
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
    begin
      User.create! row.to_hash
    rescue ActiveRecord::RecordInvalid => invalid
      puts invalid.record.errors
    rescue ActiveModel::UnknownAttributeError => invalid
      puts invalid.record.errors
    end
  end
  end
end