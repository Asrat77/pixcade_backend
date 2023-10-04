FactoryBot.define do
  factory :rating do
    user_id 
    game_id 
    rating_value {Faker::Number.number(digit: 2) }
  end
end
