class Employee < ApplicationRecord
  belongs_to :location
  has_many :accounts
end
