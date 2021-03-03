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

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "04 72 00 00 01", category: "french"}

pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "04 72 00 00 02", category: "italian"}

bocuse = { name: "bocuse", address: "Collonges", phone_number: "04 72 00 00 03", category: "french" }

shanghai = { name: "shanghai", address: "lyon 6", phone_number: "04 72 00 00 04", category: "chinese" }

tokyo = { name: "tokyo", address: "lyon 4", phone_number: "04 72 00 00 05", category: "japanese" }


[ dishoom, pizza_east, bocuse, shanghai, tokyo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
