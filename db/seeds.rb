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

50.times do
  User.create! \
    email: Faker::Internet.email,
    password: "test000",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name ,
    city: Faker::Address.city
  end

 # Gardens
gardens = [
Garden.new(title: "Garden in little Paris",
  description: "Beaufiful garden in center of the city. You'll be more than welcone to enjoy this little space of paradise with your friends",
  address: "2, Rue du bac",
  city: "Paris",
  latitude: 48.9349476,
  longitude: 2.039664700000003,
  user: users[0], photo: "pix1.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Superb rooftop in NYC",
  description: "Cute and cosy",
  address: "5th Avenue",
  city: "New York",
  latitude: 40.6781784,
  longitude: -73.9441579,
  user: users[1], photo: "pix2.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Wonderful garden en el centro Buenos Aires", description: "Just amazing  loop",
  address: "Palermo Viejo",
  city: "Buenos Aires",
  latitude: -34.57591361962323,
  longitude: -58.40902805328369,
  user: users[2], photo: "pix3.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Jardim botanico no Rio de Janeiro",
  description: "Book the place and it will be yours. Please ask if you have any questions",
  address: "Jadim botanico",
  city: "Rio de Janeiro",
  latitude: -22.9641719,
  longitude: -43.22277280000003,
  user: users[3], photo: "pix4.jpg", capacity: "10 - 49", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Jardin japonais kyotoite",
  description: "Zen, zen, just book and enjoy the charming place",
  address: "Higashi Oji Dori, Saikaishichō, Higashiyama-ku, Kyōto-shi, Kyōto-fu 605-0012",
  city: "Tokyo",
  latitude: 35.00933067288416,
  longitude: 135.77816247940063,
  user: users[4], photo: "pix5.jpg", capacity: "10 - 49", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Amazing garden in center of Paris",
  description: "Book it for 1h, 1 day or any duration",
  address: "Jardin du Luxembourg",
  city: "Paris",
  latitude: 48.8462217,
  longitude: 2.3371604999999818,
  user: users[0], photo: "pix6.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Superb rooftoop in the Heart of London",
  description: "Cosy and amazing, book it for 1 day, 1 night or any duratin you ll like",
  address: "Jeeley Street",
  city: "London",
  latitude: 51.514992241447835,
  longitude:-0.1196908950805664,
  user: users[1], photo: "pix7.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Wonderful garden in Buenos Aires",
  description: "Just amazing  loop",
  address: "Brick lane",
   city: "London",
  latitude: 51.5220063,
  longitude: -0.07170429999996486,
   user: users[2], photo: "pix8.jpg", capacity: "50 - 100", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Jardim en Bogoto",
  description: "Beaufiful garden in center of the city. You'll be more than welcone to enjoy this little space of paradise with your friends",
  address: "Calle Maracaibo",
  city: "Bogota",
  latitude: 4.711977106746532,
  longitude: -74.06890153884888,
  user: users[3], photo: "pix9.jpg", capacity: "More than 100", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
Garden.new(title: "Japanse garden in Okinawa",
  description: "One of the most charming gardin in town",
  address: "Okinawa",
  city: "Okinawa",
  latitude: 26.212800698391643,
  longitude: 127.67466187477112,
  user: users[4], photo: "pix10.jpg", capacity: "Less than 10", size: 25, price_per_hour: 50, f_bbq: [true, false].sample, f_wc: [true, false].sample, f_parking: [true, false].sample, f_pool: [true, false].sample, f_wifi: [true, false].sample, f_lights: [true, false].sample, f_music: [true, false].sample),
]

gardens.each do |garden|
  garden.save!
end

titles = ["Amazing garden ", "Beautifil rooftoop", "Wonderful garden",
"Sweet little paradise", "Cute and cosy", "Big House in the forrest", "Garden in the city",
"Perfect for a party", "Come over and enjoy"
]

pix = ["pix1.jpg", "pix2.jpg", "pix3.jpg", "pix4.jpg", "pix5.jpg", "pix6.jpg", "pix7.jpg", "pix8.jpg", "pix9.jpg", "pix10.jpg",
"pix11.jpg", "pix12.jpg", "pix13.jpg", "pix14.jpg", "pix15.jpg", "pix16.jpg", "pix17.jpg", "pix18.jpg", "pix19.jpg", "pix20.jpg"
]

desc = ["Beaufiful garden in center of the city. You'll be more than welcone to enjoy this little space of paradise with your friends",
"Enjoy the place without having the need of planing anything. We ll be in charge of everything if you want to plan your next event over here",
"Cosy and amazing, book it for 1 day, 1 night or any duratin you ll like",
"Book the place and it will be yours. Please ask if you have any questions"
]

50.times do
  Garden.create! \
    title: titles.sample ,
    description: desc.sample,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    # latitude: Faker::Address.latitude,
    # longitude: Faker::Address.longitude,
    user: User.first,
    # user: users[1],
    photo: pix.sample,
    capacity: Garden::GCAPACITY.sample,
    size: rand(1..1000),
    price_per_hour: rand(10..100000),
    f_bbq: [true, false].sample,
    f_wc: [true, false].sample,
    f_parking: [true, false].sample,
    f_pool: [true, false].sample,
    f_wifi: [true, false].sample,
    f_lights: [true, false].sample,
    f_music: [true, false].sample
end

# bookings
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
