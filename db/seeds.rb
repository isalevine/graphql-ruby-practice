# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Purchase.destroy_all
Transaction.destroy_all

charlie = Purchase.create(username: "Chawlie", description: "Nite Krawloorz", price: 20.00)
frank = Purchase.create(username: "Mr. Warthog", description: "Sushi", price: 50.00)
dennis = Purchase.create(username: "Golden God", description: "Range Rover", price: 40000.00)

Transaction.create(purchase_id: charlie.id, amount: 4.25)
Transaction.create(purchase_id: charlie.id, amount: 0.75)
Transaction.create(purchase_id: frank.id, amount: 10.50)
Transaction.create(purchase_id: frank.id, amount: 20.50)
Transaction.create(purchase_id: dennis.id, amount: 2000.00)