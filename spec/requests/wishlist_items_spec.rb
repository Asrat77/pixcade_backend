require "rails_helper"

RSpec.describe "WishlistItems", type: :request do
  include_examples("request_shared_spec", "wishlist_items", 5)

  let(:valid_attributes) do
    {
      game_id: create(:game).id,
      wishlist_id: create(:wishlist).id
    }
  end
  let(:invalid_attributes) do
    {
      game_id: nil
    }
  end

  let(:new_attributes) do
    {
      game_id: create(:game).id
    }
  end
end
