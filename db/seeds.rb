# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.create([{ name: "MontCo" }, { name: "Center City" }, { name: "Chestnut Hill" }, { name: "South Philly" }, { name: "Mt. Airy" }])

User.create([{ email: "nihilistichare@gmail.com", password: "password" }])

Walker.create([{ first_name: "Shanna", last_name: "Murry", email: "nihilistichare@gmail.com", phone: "267-903-4025", city: "Lansdale", area_id: 1, user_id: 1 }])
