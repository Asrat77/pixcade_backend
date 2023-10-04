FactoryBot.define do
  factory :descriptor do
    name { Faker::Name.name }
    description { Faker::Lorem.word }
  end
end
