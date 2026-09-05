# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.create!(
  title:        "The Ruby Way",
  author:       "Hal Fulton",
  description:  "A comprehensive guide to Ruby programming.",
  price:        39.99,
  published_at: Date.new(2020, 1, 15)
)

Book.create!(
  title:        "Agile Web Development with Rails",
  author:       "Sam Ruby",
  description:  "Learn Rails through iterative development.",
  price:        44.95,
  published_at: Date.new(2021, 6, 10)
)

Book.create!(
  title:        "Programming Ruby",
  author:       "Dave Thomas",
  description:  "The Pickaxe book — the definitive Ruby reference.",
  price:        49.99,
  published_at: Date.new(2019, 11, 5)
)