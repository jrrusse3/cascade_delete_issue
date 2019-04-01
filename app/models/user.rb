class User < ApplicationRecord
  require 'csv'
  validates_uniqueness_of :email
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