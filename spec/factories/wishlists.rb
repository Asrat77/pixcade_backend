FactoryBot.define do
  factory :wishlist do
    wishlist_id { Faker::Number.number(digits: 4) }
    user
  end
end
