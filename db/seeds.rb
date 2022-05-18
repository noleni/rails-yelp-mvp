# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'chinese'}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian'}
gallerna = { name: "Gallerna", address: "rue du Cher", category: 'french'}
pepe_pizza = { name: "Pepe Pizza", address: "rue Saint Blaise", category: 'italian'}
la_petite_vadrouille = { name: "La Petite vadrouille", address: "rue de la Chine", category: 'french'}

[dishoom, pizza_east, gallerna, pepe_pizza, la_petite_vadrouille].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
