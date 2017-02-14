# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Garden.destroy_all
User.destroy_all

u1 = User.new(email: "a1@gmail.com", password: "esjhejdrsdst")
u2 = User.new(email: "a2@gmail.com", password: "erjdfhsdkjfhdt")
u3 = User.new(email: "a3@gmail.com", password: "erlehqwoieyt")
u1.save!
u2.save!
u3.save!

g1 = Garden.new(title: "Amazing garden in center of Paris", description: "Lorem Hipster garden in center of Paris", address: "Rue du bac", city: "Paris", user: u1)
g2 = Garden.new(title: "Superb Flat in London", description: "Lorem super text", address: "5th Avenue", city: "New York",user: u2)
g3 = Garden.new(title: "Wonderful rooftop in NYC", description: "Obabbaa loop", address: "Street lane", city: "London", user: u3)

g1.save!
g2.save!
g3.save!

b1 = Booking.new(user: u1, garden: g1)
b2 = Booking.new(user: u2, garden: g2)
b3 = Booking.new(user: u3, garden: g3)
b1.save!
b2.save!
b3.save!
