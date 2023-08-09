# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(code: "SFO")
Airport.create(code: "NYC")

# Flight.create(
#   departure_airport: Airport.first,
#   arrival_airport: Airport.last,
#   start_datetime: Time.now,
#   flight_duration: 3
# )
Flight.create(
    departure_airport_id: Airport.first.id,
    arrival_airport_id: Airport.last.id,
    start_datetime: Time.now,
    duration: 4
  )
# Flight.create(departure_airport_id:12, arrival_airport_id:13, start_datetime:Time.now,duration:3)

