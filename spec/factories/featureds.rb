FactoryBot.define do
  factory :featured do
    feature_id { Faker::Alphanumeric.alpha(number: 8) }
    game
    valid_from {Date.today}
    valid_until {Date.today.advance(days: 7)}
  end
end
