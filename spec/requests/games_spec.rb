require "rails_helper"

RSpec.describe "Games", type: :request do
  include_examples("request_shared_spec", "games", 4)

  let(:valid_attributes) do
    {
      game_id: Faker::Number.number(digits: 4),
      name: Faker::Name.name,
      release_date: Date.today,
      price: Faker::Number.number(digits: 4),
      user_id: create(:user).id,
      genre_id: create(:genre).id

    }
  end
  let(:invalid_attributes) do
    {
      game_id: nil

    }
  end

  let(:new_attributes) do
    {
      release_date: Date.today.advance(days: 7)
    }
  end
end
