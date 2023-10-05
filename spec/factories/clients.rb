FactoryBot.define do
  factory :client do
    username { "alazar01" }
    password{Faker::Alphanumeric.alphanumeric(number: 8)}
  end
end
