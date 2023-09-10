FactoryBot.define do
  factory :bundle do
    bundle_id { Faker::Number.number(digits: 4) }
    bundle_name { Faker::Name.name }
    bundle_price {Faker::Number.number(digits: 4)}
    bundle_discount { Faker::Number.number(digits: 4) }
  end
end
