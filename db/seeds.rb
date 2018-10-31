# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Category.delete_all
Category.create! id: 1, name: "Vodka"
Category.create! id: 2, name: "Cognag"
Category.create! id: 3, name: "Whiskey"
Category.create! id: 4, name: "Rum"
Category.create! id: 5, name: "Gin"
Category.create! id: 6, name: "Brandy"
Category.create! id: 7, name: "Wine"
Category.create! id: 8, name: "Tequila"
Category.create! id: 9, name: "Energy Drink"
