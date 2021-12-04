# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "date"

# Users
jenny = User.create(first_name: "Jenny", last_name: "Kim", email: "jennykimdev@gmail.com", password: "1234")

# Trips
disney = Trip.create(trip_name: "Disney World! ✨", start_date: Date.new(2022, 3, 21), end_date: Date.new(2022, 3, 27), user_id: 1)

# Destinations/Places to visit
mk = Destination.create(name: "Magic Kingdom Park", lat: 28.444741800767954, long: -81.57627915693652, trip_id: 1)
animal = Destination.create(name: "Animal Kingdom Theme Park", lat: 28.360386024792135, long: -81.59132239264325, trip_id: 1)
epcot = Destination.create(name: "Epcot", lat: 28.37502751689018, long: -81.54934412941975, trip_id: 1)
hollywood = Destination.create(name: "Hollywood Studios", lat: 28.35896668518328, long: -81.5584667514894, trip_id: 1)
