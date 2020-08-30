# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed location
locations = ['Bangkok', 'Hongkong', 'Singapore', 'Vietnam']
locations.each do |location|
  Location.create(name: location) unless Location.where('name = ?', location).first
end

# Seed employees
employees = ['John Doe', 'David', 'Peter', 'James', 'Marry']
locations = Location.all
employees.each do |employee|
  employee_data = {
    last_name: FFaker::Name.last_name,
    first_name: FFaker::Name.first_name,
    email: FFaker::Internet.free_email,
    location: locations.sample,
    joined_at: FFaker::Time.between(5.years.ago, Time.now)
  }

  Employee.create(employee_data)
end

# Seed user
admin = User.create! email: 'admin@gmail.com', password: 'QWEqwe12'

# Account
