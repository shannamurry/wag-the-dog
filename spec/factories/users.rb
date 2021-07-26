FactoryBot.define do
  factory :review do
    email { Faker::Internet.email }
    comment { "password" }
    association :user
    association :walker
  end
end
