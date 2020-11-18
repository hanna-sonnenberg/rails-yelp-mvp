# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# as strings: name, address, phone_number, category

puts 'Creating restaurants...'

zola = { name: 'Zola', address: 'Paul-Lincke-Ufer 39-40, 10999 Berlin', phone_number: '49 30 27695938', category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '04 30 27696736', category: 'italian' }
wagamama = { name: 'Wagamama', address: 'De Ruijterkade 36B, 1012 AA Amsterdam', phone_number: '020 363 5462', category: 'japanese' }
vegan_korean = { name: 'Vegan Korean', address: 'Husemannstraße 2, 10435 Berlin', phone_number: '49 30 13947496', category: 'chinese' }
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '020 452 5462', category: 'french' }

[zola, pizza_east, wagamama, vegan_korean, dishoom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
