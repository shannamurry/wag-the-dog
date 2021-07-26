# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create([{ email: "nihilistichare@gmail.com", password: "password" }])

# Walker.create([{ first_name: "Shanna", last_name: "Murry", email: "nihilistichare@gmail.com", phone: "267-903-4025", city: "Lansdale", area_id: 1, user_id: 1 }])
area1 = Area.create(name: "MontCo")
area2 = Area.create(name: "Mt. Airy")
area3 = Area.create(name: "Chestnut Hill")
area4 = Area.create(name: "Center City")
area5 = Area.create(name: "South Philly")
area6 = Area.create(name: "Bucks County")

areas = [area1, area2, area3, area4, area5, area6]

10.times do |i|
  user = User.create(email: Faker::Internet.email, password: "123456")
  user2 = User.create(email: Faker::Internet.email, password: "123456")

  walker = Walker.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::Number.number(digits: 10),
    email: Faker::Internet.email,
    city: Faker::Address.city,
    details: Faker::Lorem.paragraph_by_chars(number: 300),
    user_id: user.id,
    area_id: areas[rand(0..5)].id,
  )

  walker.reviews.create(
    [
      { rating: rand(1..5), comment: Faker::Lorem.sentence(word_count: 10), user_id: user2.id, walker_id: walker.id },
      { rating: rand(1..5), comment: Faker::Lorem.sentence(word_count: 10), user_id: user2.id, walker_id: walker.id },
    ]
  )
end
