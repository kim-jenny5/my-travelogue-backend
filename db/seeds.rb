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
disney = Trip.create(trip_name: "Disney World! ✨", start_date: DateTime.new(2022, 3, 21), end_date: DateTime.new(2022, 3, 27), user_id: 1)
philly = Trip.create(trip_name: "Philly with Andrew ❣️", start_date: DateTime.new(2021, 5, 7), end_date: DateTime.new(2021, 5, 9), user_id: 1)
cottage = Trip.create(trip_name: "Cottage Getaway with Andrew 🍃", start_date: DateTime.new(2021, 8, 7), end_date: DateTime.new(2021, 8, 9), user_id: 1)

# Places to visit
# Disney
mk = Place.create(place_name: "Magic Kingdom Park", trip_id: 1)
animal = Place.create(place_name: "Animal Kingdom Theme Park", trip_id: 1)
epcot = Place.create(place_name: "Epcot", trip_id: 1)
hollywood = Place.create(place_name: "Hollywood Studios", trip_id: 1)

#Philly
lovepark = Place.create(place_name: "Love Park", trip_id: 2)
artmuseum = Place.create(place_name: "Philadelphia Museum of Art", trip_id: 2)
magicgardens = Place.create(place_name: "Philadelphia's Magic Gardens", trip_id: 2)
upenn = Place.create(place_name: "University of Pennsylvania", trip_id: 2)
mkt = Place.create(place_name: "Reading Terminal Market", trip_id: 2)
independence = Place.create(place_name: "Independence Hall", trip_id: 2)
mutter = Place.create(place_name: "The Mütter Museum at The College of Physicians of Philadelphia", trip_id: 2)
penitentiary = Place.create(place_name: "Eastern State Penitentiary", trip_id: 2)

#Cottage
kingston = Place.create(place_name: "Rosendale", trip_id: 3)
