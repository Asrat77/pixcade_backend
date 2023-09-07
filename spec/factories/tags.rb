FactoryBot.define do
  factory :tag do
    tag_id { Faker::Number.number(digits: 4) }
    tag_name { Faker::Lorem.word }
  end
end
