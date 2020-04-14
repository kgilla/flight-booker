# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(
name: "Toronto Pearson International Airport", 
airport_code: "YYZ",
location: "Toronto, Canada") 

Airport.create(
name: "Dubai International Airport", 
airport_code: "DXB",
location: "Dubai, United Arab Emirates")

Airport.create(
name: "O'Hare International Airport", 
airport_code: "ORD",
location: "Chicago, United States") 

Airport.create(
name: "Los Angeles International Airport", 
airport_code: "LAX",
location: "Los Angeles, United States") 

Airport.create(
name: "London Heathrow Airport", 
airport_code: "LHR",
location: "London, United Kingdom") 

Airport.create(
name: "Charles de Gaulle Airport", 
airport_code: "CDG",
location: "Paris, France") 

Airport.create(
name: "Barcelona–El Prat Airport", 
airport_code: "BCN",
location: "Barcelona, Spain") 

Airport.create(
name: "Tokyo Haneda Airport", 
airport_code: "HND",
location: "Tokyo, Japan") 

Airport.create(
  name: "Frankfurt Airport", 
  airport_code: "FRA",
  location: "Frankfurt, Germany") 

Airport.create(
  name: "Istanbul Airport", 
  airport_code: "IST",
  location: "Istanbul, Turkey") 

600.times do
  airports = Airport.order(Arel.sql('RANDOM()'))
  Flight.create(
    date: (Time.now + rand(2592000)).strftime('%Y/%m/%d %I:%M:%S %p'),
    duration: rand(2..10),
    price: rand(150..600),
    from_airport: airports[0],
    to_airport: airports[1]
  )
end