FactoryBot.define do
  factory :game do
    game_id { Faker::Number.number(digits: 4) }
    name { Faker::Lorem.word }
    price { Faker::Number.number(digits: 3) }
    release_date { Date.today }
    user
    genre
  end
end
