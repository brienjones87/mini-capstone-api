# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Going to seed the database..."
product = Product.new(name: "Flabbergaster", price: 5, image_url: "flabbergaster.jpg", description: "That which flabbergasts")
product.save
product = Product.new(name: "Gasterflabber", price: 10, image_url: "gasterflabber.jpg", description: "That which reverts the flabbergasted object")
product.save
product = Product.new(name: "Ool", price: 50, image_url: "pool.jpg", description: "A pool with no p in it")
product.save
puts "Done!"
