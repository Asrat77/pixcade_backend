FactoryBot.define do
  factory :tag do
    tag_id { Faker::Alphanumeric.alpha(number: 8) }
    tag_name { Faker::Name.name }
  end
end
