FactoryBot.define do
  factory :genre do
    genre_id { Faker::Number.number(digits: 4) }
    name { Faker::Lorem.word }
  end
end
