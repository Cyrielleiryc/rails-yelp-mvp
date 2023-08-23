# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Destroying all restaurants...'
Restaurant.destroy_all
puts 'Done!'

puts 'Creating 5 restaurants...'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
end
puts 'Finished!'
