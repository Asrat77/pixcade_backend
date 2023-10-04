require 'rails_helper'

RSpec.describe "Wishlists", type: :request do
  include_examples('request_shared_spec', 'wishlists', 2, [:update])

  let(:valid_attributes) do
    {
      wishlist_id: Faker::Number.number(digits: 4),
      user_id: create(:user).id
    }
  end
  let(:invalid_attributes) do
    {
      wishlist_id: nil
    }
  end

  let(:new_attributes) do {
    rating_value: Faker::Number.number(digits: 2),
  } end

end
