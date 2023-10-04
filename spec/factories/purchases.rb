FactoryBot.define do
  factory :purchase do

    purchase_id { Faker::Alphanumeric.alpha(number: 8) }
    game
    user
    purchase_date { Date.today }
    price { Faker::Number.number(digits: 3) }
  end
end
