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

users = [
User.new(email: "bob@gmail.com", password: "aurelien", first_name: "Bob", last_name: 'Robert', city: "Paris"),
User.new(email: "annie@gmail.com", password: "aurelien", first_name: "Annie", last_name: 'Tsang', city: "NYC"),
User.new(email: "olga@gmail.com", password: "aurelien", first_name: "Olga", last_name: 'Starkova', city: "Londond"),
User.new(email: "ulysse@gmail.com", password: "aurelien", first_name: "Ulysse", last_name: 'Schwartz', city: "Rio de Janeiro"),
User.new(email: "aurelien@gmail.com", password: "aurelien", first_name: "Aurelien", last_name: 'Burget', city: "Kyoto"),
User.new(email: "edward@gmail.com", password: "aurelien", first_name: "Edward", last_name: 'Schultz', city: "Shanghai"),
User.new(email: "federico@gmail.com", password: "aurelien", first_name: "Federico", last_name: 'Volontieri', city: "Firenze"),
User.new(email: "ines@gmail.com", password: "aurelien", first_name: "Ines", last_name: 'Beatrix', city: "Barcelona"),
User.new(email: "marion@gmail.com", password: "aurelien", first_name: "Marion", last_name: 'Chabassol', city: "Accapulco"),
User.new(email: "jordan@gmail.com", password: "aurelien", first_name: "Jordan", last_name: 'Demmouche', city: "Seattle"),
User.new(email: "hughes@gmail.com", password: "aurelien", first_name: "Hugues", last_name: 'Thomas', city: "Los Angeles"),
User.new(email: "nicolas@gmail.com", password: "aurelien", first_name: "Nicolas", last_name: 'Ferrary', city: "San Francisxo"),
User.new(email: "eytan@gmail.com", password: "aurelien", first_name: "Eytan", last_name: 'Messika', city: "Miami"),
User.new(email: "benjamin@gmail.com", password: "aurelien", first_name: "Benjamin", last_name: 'Lambrou', city: "Marseilles")
]

users.each do |user|
  user.save!
end

gardens = [
Garden.new(title: "Amazing garden in center of Paris", description: "Lorem Hipster garden in center of Paris", address: "Rue du bac", city: "Paris", user: users[0], photo: "pix1.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Superb rooding in London", description: "Lorem super text", address: "5th Avenue", city: "New York",user: users[1], photo: "pix2.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Wonderful gardein in Buenos Aires", description: "Just amazing  loop", address: "Street lane", city: "London", user: users[2], photo: "pix3.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Jardim botanico no Rio de Janeiro", description: "Obabbaa loop", address: "Street lane", city: "Paris", user: users[3], photo: "pix4.jpg", capacity: "10 - 49", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Jardin japonais tokyoite", description: "Zen, zen ...", address: "Okinawa street", city: "Tokyo", user: users[4], photo: "pix5.jpg", capacity: "10 - 49", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Amazing garden in center of Paris", description: "Lorem Hipster garden in center of Paris", address: "Rue du bac", city: "Paris", user: users[0], photo: "pix6.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Superb rooding in London", description: "Lorem super text", address: "5th Avenue", city: "New York",user: users[1], photo: "pix7.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Wonderful gardein in Buenos Aires", description: "Just amazing  loop", address: "Street lane", city: "London", user: users[2], photo: "pix8.jpg", capacity: "50 - 100", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Jardim botanico no Rio de Janeiro", description: "Obabbaa loop", address: "Street lane", city: "Paris", user: users[3], photo: "pix9.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: true),
Garden.new(title: "Jardin japonais tokyoite", description: "Zen, zen ...", address: "Okinawa street", city: "Tokyo", user: users[4], photo: "pix10.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: true)
]

gardens.each do |garden|
  garden.save!
end

bookings = [
  Booking.new(user: users[1], garden: gardens[1], status: "confirmed", checkin_at: Date.today - 65, checkout_at: Date.today - 44, accepts: true),
  Booking.new(user: users[2], garden: gardens[2], status: "pending", checkin_at: Date.today - 20, checkout_at: Date.today - 12, accepts: true),
  Booking.new(user: users[3], garden: gardens[3], status: "rejected", checkin_at: Date.today - 22, checkout_at: Date.today + 36, accepts: true),
  Booking.new(user: users[4], garden: gardens[1], status: "pending", checkin_at: Date.today - 2, checkout_at: Date.today - 1, accepts: true),
  Booking.new(user: users[5], garden: gardens[2], status: "confirmed", checkin_at: Date.today - 68, checkout_at: Date.today - 63, accepts: true),
  Booking.new(user: users[6], garden: gardens[3], status: "rejected", checkin_at: Date.today - 342, checkout_at: Date.today - 333, accepts: true),
  Booking.new(user: users[0], garden: gardens[4], status: "confirmed", checkin_at: Date.today - 335, checkout_at: Date.today - 433, accepts: true),
  Booking.new(user: users[2], garden: gardens[5], status: "pending", checkin_at: Date.today - 324, checkout_at: Date.today - 323, accepts: true),
  Booking.new(user: users[3], garden: gardens[6], status: "confirmed", checkin_at: Date.today - 125, checkout_at: Date.today - 123, accepts: true),
  Booking.new(user: users[4], garden: gardens[7], status: "rejected", checkin_at: Date.today - 32, checkout_at: Date.today - 28, accepts: true),
  Booking.new(user: users[5], garden: gardens[8], status: "pending", checkin_at: Date.today - 19, checkout_at: Date.today - 17, accepts: true),
  Booking.new(user: users[6], garden: gardens[9], status: "pending", checkin_at: Date.today - 22, checkout_at: Date.today - 18, accepts: true),
  Booking.new(user: users[7], garden: gardens[4], status: "confirmed", checkin_at: Date.today - 12, checkout_at: Date.today - 8, accepts: true),
  Booking.new(user: users[8], garden: gardens[5], status: "pending", checkin_at: Date.today - 7, checkout_at: Date.today - 3, accepts: true),
  Booking.new(user: users[9], garden: gardens[6], status: "rejected", checkin_at: Date.today - 34, checkout_at: Date.today - 33, accepts: true),
  Booking.new(user: users[10], garden: gardens[7], status: "pending", checkin_at: Date.today - 42, checkout_at: Date.today - 41, accepts: true),
  Booking.new(user: users[11], garden: gardens[8], status: "pending", checkin_at: Date.today - 5, checkout_at: Date.today - 4, accepts: true),
  Booking.new(user: users[12], garden: gardens[9], status: "confirmed", checkin_at: Date.today - 2, checkout_at: Date.today - 1, accepts: true),
  Booking.new(user: users[8], garden: gardens[1], status: "confirmed", checkin_at: Date.today - 65, checkout_at: Date.today - 44, accepts: true),
  Booking.new(user: users[2], garden: gardens[2], status: "pending", checkin_at: Date.today - 20, checkout_at: Date.today - 12, accepts: true),
  Booking.new(user: users[7], garden: gardens[3], status: "rejected", checkin_at: Date.today - 22, checkout_at: Date.today + 36, accepts: true),
  Booking.new(user: users[9], garden: gardens[1], status: "pending", checkin_at: Date.today - 2, checkout_at: Date.today - 1, accepts: true),
  Booking.new(user: users[11], garden: gardens[2], status: "confirmed", checkin_at: Date.today - 68, checkout_at: Date.today - 63, accepts: true),
  Booking.new(user: users[4], garden: gardens[3], status: "rejected", checkin_at: Date.today - 342, checkout_at: Date.today - 333, accepts: true),
  Booking.new(user: users[5], garden: gardens[0], status: "confirmed", checkin_at: Date.today - 335, checkout_at: Date.today - 433, accepts: true),
  Booking.new(user: users[6], garden: gardens[1], status: "pending", checkin_at: Date.today - 324, checkout_at: Date.today - 323, accepts: true),
  Booking.new(user: users[8], garden: gardens[2], status: "confirmed", checkin_at: Date.today - 125, checkout_at: Date.today - 123, accepts: true),
  Booking.new(user: users[7], garden: gardens[3], status: "rejected", checkin_at: Date.today - 32, checkout_at: Date.today - 28, accepts: true),
  Booking.new(user: users[5], garden: gardens[4], status: "pending", checkin_at: Date.today - 19, checkout_at: Date.today - 17, accepts: true),
  Booking.new(user: users[2], garden: gardens[5], status: "pending", checkin_at: Date.today - 22, checkout_at: Date.today - 18, accepts: true),
  Booking.new(user: users[0], garden: gardens[6], status: "confirmed", checkin_at: Date.today - 12, checkout_at: Date.today - 8, accepts: true),
  Booking.new(user: users[8], garden: gardens[6], status: "pending", checkin_at: Date.today - 7, checkout_at: Date.today - 3, accepts: true),
  Booking.new(user: users[9], garden: gardens[8], status: "rejected", checkin_at: Date.today - 34, checkout_at: Date.today - 33, accepts: true),
  Booking.new(user: users[10], garden: gardens[0], status: "pending", checkin_at: Date.today - 42, checkout_at: Date.today - 41, accepts: true),
  Booking.new(user: users[11], garden: gardens[1], status: "pending", checkin_at: Date.today - 5, checkout_at: Date.today - 4, accepts: true),
  Booking.new(user: users[12], garden: gardens[2], status: "confirmed", checkin_at: Date.today - 2, checkout_at: Date.today - 1, accepts: true)
]

bookings.each do |booking|
  booking.save!
end
