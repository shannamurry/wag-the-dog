FactoryBot.define do
  factory :walker do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::Number.number(digits: 10) }
    email { Faker::Internet.email }
    city { Faker::Address.city }
    details { "Lorem ipsum..." }
    association :user
    association :area
  end
end
