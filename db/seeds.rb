# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jordan = User.create(name: "Jordan", password: "1234", email: "jordan@email.com")
sarah = User.create(name: "Sarah", password: "1234", email: "sarah@email.com")

Kenzie = Recipient.create(name: "Kenzie", email: "kenzie@email.com")
Wyatt = Recipient.create(name: "Wyatt", email: "wyatt@email.com")


jordan.presents.create(name: "Slippers", category: "Clothing", brand: "Carhartt", cost: 45.00, recipient_id: 1)
sarah.presents.create(name: "Purse", category: "Accessories", brand: "Coach", cost: "395.00", recipient_id: 2)



