FactoryBot.define do
  factory :walker do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::Number.number(digits: 10) }
    email { Faker::Internet.email }
    city { Faker::Address.city }
    details { "Vexillologist jean shorts photo booth farm-to-table polaroid poutine. Actually mlkshk 3 wolf moon taxidermy lumbersexual, ramps quinoa fingerstache activated charcoal try-hard dreamcatcher meggings. DIY live-edge bushwick waistcoat tote bag +1 fam biodiesel pickled post-ironic lumbersexual fixie williamsburg readymade crucifix. Taxidermy XOXO disrupt bitters blog godard marfa mlkshk post-ironic banh mi cardigan." }
    association :user
    association :area
  end
end
