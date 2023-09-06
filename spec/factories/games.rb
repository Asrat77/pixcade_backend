FactoryBot.define do
  factory :game do
    game_id {  Faker::Number.number(digits: 4) }
    name { Faker::Lorem.word }
    price { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    discounted_price { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    release_date { Faker::Date.between(from: Date.parse("2000-09-05"), to: Date.parse("2023-09-05")) }
    platform { Faker::Lorem.word }
    user 
    review 
    genre 
  end
end
