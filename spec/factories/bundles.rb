FactoryBot.define do
  factory :bundle do
    bundle_id { Faker::Number.number }
    bundle_name { Faker::Name.name }
    bundle_price {Faker::NUmber.number }
    bundle_discount { Faker::NUmber.number }
  end
end
