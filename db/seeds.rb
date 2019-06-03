# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ship.destroy_all
Booking.destroy_all
User.destroy_all

user1 = User.create!(email: "b@gmail.com", password: 'secret')
user2 = User.create!(email: "bob@gmail.com", password: 'secret')

ship1  = Ship.create!(name: 'ship1', user: user1)

Booking.create!(user: user2, ship: ship1, status:'ok')


