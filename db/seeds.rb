# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# EXPATS

abdullaah = Expat.create(name:'Abdullaah', email: 'abdullaah@gmail.com', password: '123456', phone_number: '347-479-4010', street: '347 Nadeem street', city: 'Cairo', zip_code: '11101', identification_num: '2011')

yusuf = Expat.create(name:'Yusuf', email: 'yusuf@gmail.com', password: '123456', phone_number: '347-555-5555', street: '347 Elizabeth street', city: 'London', zip_code: '11101', identification_num: '2012')

aaisha = Expat.create(name:'Aaisha', email: 'Aisha@gmail.com', password: '123456', phone_number: '347-555-2323', street: '347 Mandela street', city: 'Kigali', zip_code: '11101', identification_num: '2014')


# TRAVELERS

abdoul = Traveler.create(name:'Abdoul', email: 'committed1@gmail.com', password: '123456', phone_number: '347-445-4895', street: '1555 Odell St, 5g', city: 'Bronx', zip_code: '10462', identification_num: '1986', status: 'approved')

fatima = Traveler.create(name:'Fatima', email: 'ms.barry25@gmail.com', password: '123456', phone_number: '347-445-4779', street: '1555 Odell St, 5g', city: 'Brooklyn', zip_code: '10462', identification_num: '1990', status: 'approved')

aisatou = Traveler.create(name:'Aisatou', email: 'aisatou@gmail.com', password: '123456', phone_number: '646-504-5560', street: '1555 Odell St, 5g', city: 'Queens', zip_code: '10462', identification_num: '1996', status: 'approved')

# TRIPS

trip1 = Trip.create(departure_city: 'New York City', destination_city: 'Cairo', depart_date: '08/06/2018', arrival_date: '08/07/2018', airline: 'Egypt Air', flight_num: 'EA347', traveler_id: abdoul.id)

trip2 = Trip.create(departure_city: 'New York City', destination_city: 'London', depart_date: '08/06/2018', arrival_date: '08/07/2018', airline: 'British Airways', flight_num: 'BA347', traveler_id: fatima.id)

trip3 = Trip.create(departure_city: 'New York City', destination_city: 'Kigali', depart_date: '08/06/2018', arrival_date: '08/07/2018', airline: 'Egypt Air', flight_num: 'EA347', traveler_id: aisatou.id)


# REQUESTS

request1 = Request.create(item_name: "iPhone 8", departing_city: 'New York City', destination_city: 'Cairo', weight: 1, description: 'Brand new iPhone 8', status: 'assigned', expat_id: abdullaah.id, trip_id: trip1.id, item_cost: '800', item_url: 'https://www.walmart.com/ip/Simple-Mobile-Prepaid-Apple-iPhone-8-Plus-64GB-Space-Gray/806114059', quantity: 1)

request2 = Request.create(item_name: "Starbucks Coffee", departing_city: 'New York City', destination_city: 'London', weight: 3, description: 'Brand new iPhone 8', status: 'assigned', expat_id: aaisha.id, trip_id: trip3.id, item_cost: '8', item_url: 'https://www.walmart.com/ip/Starbucks-Pike-Place-Roast-Medium-Roast-Whole-Bean-Coffee-12-Ounce-Bag/44170163', quantity: 5)

request3 = Request.create(item_name: "MacBook Pro Charger", departing_city: 'New York City', destination_city: 'Kigali', weight: 2, description: 'Brand new charger for my MacBook Pro', status: 'assigned', expat_id: abdullaah.id, trip_id: trip2.id, item_cost: '79', item_url: 'https://www.walmart.com/ip/Apple-60W-MagSafe-2-Power-Adapter-MacBook-Pro-with-13-inch-Retina-display/137495146', quantity: 2)
