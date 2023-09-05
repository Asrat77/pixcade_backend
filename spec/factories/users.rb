FactoryBot.define do
  factory :user do
    user_id { Faker::Number.number(digits: 4) }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
