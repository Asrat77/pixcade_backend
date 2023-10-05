FactoryBot.define do
  factory :user do
    user_id { Faker::Number.number(digits: 4) }
    name { Faker::Name.name }
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    password{Faker::Alphanumeric.alphanumeric(number: 8)}
  end
end
