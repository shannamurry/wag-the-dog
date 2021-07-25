# FactoryBot.define do
#   factory :user do
#     email { Faker::Internet.email }
#     password { "password" }
#   end
# end

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    # password_confirmation { "password" }
    # confirmed_at { Date.today }
  end
end
