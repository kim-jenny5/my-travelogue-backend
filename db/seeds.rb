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

# Destinations/Places to visit
# Disney
mk = Destination.create(name: "Magic Kingdom Park", lat: 28.444741800767954, long: -81.57627915693652, trip_id: 1)
animal = Destination.create(name: "Animal Kingdom Theme Park", lat: 28.360386024792135, long: -81.59132239264325, trip_id: 1)
epcot = Destination.create(name: "Epcot", lat: 28.37502751689018, long: -81.54934412941975, trip_id: 1)
hollywood = Destination.create(name: "Hollywood Studios", lat: 28.35896668518328, long: -81.5584667514894, trip_id: 1)

#Philly
lovepark = Destination.create(name: "Love Park", lat: 39.95528817999863, long: -75.16509324325952)
artmuseum = Destination.create(name: "Philadelphia Museum of Art", lat: 39.96620634255125, long: -75.18117367457742)
magicgardens = Destination.create(name: "Philadelphia's Magic Gardens", lat: 39.94423403689116, long: -75.15908509550786)
upenn = Destination.create(name: "University of Pennsylvania", lat: 39.95331435688779, long: -75.19264489223505)
mkt = Destination.create(name: "Reading Terminal Market", lat: 39.954498657590015, long: -75.15917092619001)
independence = Destination.create(name: "Independence Hall", lat: 39.950090323302575, long: -75.14998704319818)
mutter = Destination.create(name: "The Mütter Museum at The College of Physicians of Philadelphia", lat: 39.9534528376406, long: -75.17639125985599)
penitentiary = Destination.create(name: "Eastern State Penitentiary", lat: 39.968459717937186, long: -75.17262188684396)

#Cottage
kingston = Destination.create(name: "Rosendale", lat: 41.846003762087385, long: -74.08121738629323)
