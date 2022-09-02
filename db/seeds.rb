# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create!([{
  code: "SFO"
},
{
  code: "SAN"
},
{
  code: "JFK"
},
{
  code: "SEA"
},
{
  code: "PDX"
},
{
  code: "LAS"
}])

p "Created #{Airport.count} airports"

Flight.create!([{
  departure_id: 1,
  arrival_id: 2,
  start_datetime: DateTime.civil(2022, 9, 19, 6, 30),
  duration: 1.hour+35.minutes
},
{
  departure_id: 1,
  arrival_id: 3,
  start_datetime: DateTime.civil(2022, 9, 20, 7, 30),
  duration: 5.hour+40.minutes
},
{
  departure_id: 4,
  arrival_id: 5,
  start_datetime: DateTime.civil(2022, 9, 21, 8, 30),
  duration: 55.minutes
},
{
  departure_id: 6,
  arrival_id: 3,
  start_datetime: DateTime.civil(2022, 9, 22, 9, 30),
  duration: 5.hours+35.minutes
}])

p "Created #{Flight.count} flights"