# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'seeding merchandiser'
mer = Merchandiser.create(username: "Kyle M. Miller", image: "https://images.unsplash.com/photo-1616002411355-49593fd89721?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzc3BvcnQlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", email: "kyle@gmail.com", phone_number: 712000000,  password: "123")
merc =Merchandiser.create(username: "Laura K. Dean", image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", email: "laura@gmail.com", phone_number: 734000000, password: "1234")
merch =Merchandiser.create(username: "Jason A. Woods", image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", email: "jason@gmail.com", phone_number: 756000000, password: "12345")
mercha =Merchandiser.create(username: "Jasmine Hogan", image: "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", email: "jasmine@gmail.com", phone_number: 778000000,  password: "123456")
merchan =Merchandiser.create(username: "Kenneth R. Wiley", image: "https://images.unsplash.com/photo-1531727991582-cfd25ce79613?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmxhY2slMjBwZW9wbGUlMjBmYWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60", email: "kenneth@gmail.com", phone_number: 790000000,  password: "1234567")

# Manager.create(username: "Joseph K. Williams", image: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGVvcGxlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", email: "joseph@gmail.com", phone_number: "0712 345 000", password: "1234a")
# Manager.create(username: "Nathaniel A. Longoria", image: "https://images.unsplash.com/photo-1602133187081-4874fdbd555c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFzc3BvcnQlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60", email: "nathaniel@gmail.com", phone_number: "0712 678 000", password: "1234b")
puts "seeding outlet"
ou =Outlet.create(name: "Naivas Moi Avenue", location:"Development House, Moi Avenue", merchandiser_id: 1)
out =Outlet.create(name: "Carrefour Mega", location:"Carrefour Mega", merchandiser_id: 1)
outl =Outlet.create(name: "Chandarana Foodplus Supermarkets Ngara", location:"Parklands/Highridge", merchandiser_id: 2)
outle =Outlet.create(name: "Mathai Supermarket Ltd", location:"Ronald Ngala St ?? In NNUS Bus Service", merchandiser_id: 2)
puts "seeding routeplan"
rou =RoutePlan.create(merchandiser_id: 1, manager_id: 1, outlet_id: 1)
rout =RoutePlan.create(merchandiser_id: 2, manager_id: 2, outlet_id: 2)
route =RoutePlan.create(merchandiser_id: 1, manager_id:1, outlet_id: 3)
routep =RoutePlan.create(merchandiser_id: 3, manager_id: 2, outlet_id: 4)

puts "done seeding"

