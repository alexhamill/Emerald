# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

Product.create(name: "T-shirt", price: 19.99, description: "A cool t-shirt")
Product.create(name: "Hat", price: 9.99, description: "A stylish hat")
Product.create(name: "Mug", price: 12.50, description: "A coffee mug")
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
