# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
maisondufleuve = { name: "La maison du fleuve", address: "Camblanes et Meynac", phone_number: "O5 02 03 04 06", category: "french" }
risotto =  { name: "Le risotto", address: "Merignac", phone_number: "O1 23 45 67 89", category: "italian" }
friterie = { name: "La Friterie", address: "Bruxelles", phone_number: "O1 98 45 67 32", category: "belgian" }
royalbuffet = { name: "Royal Buffet", address: "Merignac", phone_number: "O1 23 46 65 89", category: "chinese" }
sushishop = { name: "sushishop", address: "Bordeaux", phone_number: "O1 25 45 77 89", category: "japanese" }

[ maisondufleuve, risotto, friterie, royalbuffet, sushishop ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
