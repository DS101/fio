class Person < ApplicationRecord
  validates :firstname, presence: true
  validates :full_name, presence: true
  has_many :changed_names
end
