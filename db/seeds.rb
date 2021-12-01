# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jenny = User.create(first_name: "Jenny", last_name: "Kim", email: "jennykimdev@gmail.com", password: "1234")
# disney = Trip.create(name: "Disney World! ✨", location: "Orlando, FL", start_date: )
# t.string :name
# t.string :location
# t.datetime :start_date
# t.datetime :end_date
# t.belongs_to :user, null: false, foreign_key: true