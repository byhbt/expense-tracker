class Employee < ApplicationRecord
  belongs_to :location
  has_and_belongs_to_many :accounts
end
