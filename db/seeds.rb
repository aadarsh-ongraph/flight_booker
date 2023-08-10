# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Airport.create(code: "MNO")
# Airport.create(code: "KLM")

# # Flight.create(
# #   departure_airport: Airport.first,
# #   arrival_airport: Airport.last,
# #   start_datetime: Time.now,
# #   flight_duration: 3
# # )
# Flight.create(
#     departure_airport_id:14, #Airport.first.id,
#     arrival_airport_id: 15,#Airport.last.id,
#     start_datetime: Time.now,
#     duration: 4
#   )
# # Flight.create(departure_airport_id:12, arrival_airport_id:13, start_datetime:Time.now,duration:3)

airport_code1 = Airport.create(code: "abc")
airport_code2 = Airport.create(code: "def")
airport_code3 = Airport.create(code: "ghi")
airport_code4 = Airport.create(code: "jkl")


Flight.create(
    departure_airport_id: airport_code1.id,
    arrival_airport_id: airport_code2.id,
    start_datetime: Date.today,
    duration: 6 
)
Flight.create(
    departure_airport_id: airport_code2.id,
    arrival_airport_id: airport_code3.id,
    start_datetime: Date.today,
    duration: 3 
)
Flight.create(
    departure_airport_id: airport_code3.id,
    arrival_airport_id: airport_code4.id,
    start_datetime: Date.today,
    duration: 5 
)
