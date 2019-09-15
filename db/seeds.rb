# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Purchase.destroy_all
Transaction.destroy_all
TransactionNote.destroy_all
Note.destroy_all

charlie = Purchase.create(username: "Chawlie", description: "Nite Krawloorz", price: 20.00, reference_id: SecureRandom.uuid)
frank = Purchase.create(username: "Mr. Warthog", description: "Sushi", price: 50.00, reference_id: SecureRandom.uuid)
dennis = Purchase.create(username: "Golden God", description: "Range Rover", price: 40000.00, reference_id: SecureRandom.uuid)

transaction1 = Transaction.create(purchase_id: charlie.id, amount: 0.75)
transaction2 = Transaction.create(purchase_id: charlie.id, amount: 4.25)
transaction3 = Transaction.create(purchase_id: frank.id, amount: 10.50)
transaction4 = Transaction.create(purchase_id: frank.id, amount: 20.50)
transaction5 = Transaction.create(purchase_id: dennis.id, amount: 2000.00)

note1 = Note.create(text: "note1")
note2 = Note.create(text: "note2")
note3 = Note.create(text: "note3")

transnote1 = TransactionNote.create(transaction_id: transaction1.id, note_id: note1.id)
transnote1 = TransactionNote.create(transaction_id: transaction2.id, note_id: note2.id)
transnote1 = TransactionNote.create(transaction_id: transaction3.id, note_id: note3.id)
transnote1 = TransactionNote.create(transaction_id: transaction4.id, note_id: note1.id)
transnote1 = TransactionNote.create(transaction_id: transaction5.id, note_id: note2.id)
transnote1 = TransactionNote.create(transaction_id: transaction5.id, note_id: note3.id)

