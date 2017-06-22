# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
System.create(part_number: 1, serial_number: 1, name: "Test System", vendor_id: 1, install_date: "2017-01-01", decommission_date: nil, family: "Test Systems", cost: 25.01, location_id: 1)
Location.create(street: "1 Test Drive", city: "Exampleton", state: "EX", zip: "11111", nickname: "Example Location")
Role.create([{name: "User"}, {name: "Manager"}, {name: "Admin"}])
Part.create(part_number: "1", vendor_id: 1, on_hand: 420, threshold: 400, order_url: "https://github.com/Fishdigger/maintenance-management", cost: 420.69, unit_of_issue: "ea", name: "Thingy")
Technician.create(name: "Joel Gregory", employee_number: "A1", payrate: 50.00, location_id: 1, role_id: 1)