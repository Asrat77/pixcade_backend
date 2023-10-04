FactoryBot.define do
  factory :platform do
    platform_id { Faker::Alphanumeric.alpha(number: 8) }
    name { Faker::Name.name }
    description { Faker::Lorem.word }
  end
end
