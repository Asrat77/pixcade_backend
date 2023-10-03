FactoryBot.define do
  factory :release do
    release_id { Faker::Alphanumeric.alpha(number: 8) }
    user
    game
  end
end
