FactoryBot.define do
  factory :rating do
    user
    game
    rating_value { Faker::Number.number(digits: 2) }
  end
end
