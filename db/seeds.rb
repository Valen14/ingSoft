# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "add categories"
Category.find_or_create_by(name: "gauchito/a", min_point: 0, max_point: 0)
Category.find_or_create_by(name: "gaucho/a", min_point: 1, max_point: 5)
Category.find_or_create_by(name: "gauchaso/a", min_point: 6, max_point: 10)