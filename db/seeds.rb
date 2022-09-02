# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all
Flight.destroy_all


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

# Flight.create!([{
#   departure_id: 
# }])