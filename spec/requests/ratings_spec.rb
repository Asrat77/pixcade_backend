require 'rails_helper'

RSpec.describe 'Ratings', type: :request do
  include_examples('request_shared_spec', 'ratings', 2, [:create])

  let(:valid_attributes) do
    {
      game_id: create(:game).id,
      user_id: create(:user).id,
      rating_value: Faker::Number.number(digits: 2)
    }
  end
  let(:invalid_attributes) do
    {
      game: nil
    }
  end

  let(:new_attributes) do {
    rating_value: Faker::Number.number(digits: 2),
  } end


end
