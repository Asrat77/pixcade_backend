FactoryBot.define do
  factory :bundle_item do
    bundleItemID { Faker::Alphanumeric.alpha(number: 8) }
    bundle
    game
  end
end
