FactoryBot.define do
  factory :review do
    posted_time { DateTime.now }
    review_content { Faker::Lorem.sentence }
    user
  end
end
