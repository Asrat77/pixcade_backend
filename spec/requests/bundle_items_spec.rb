require "rails_helper"

RSpec.describe "BundleItems", type: :request do
  include_examples("request_shared_spec", "bundle_items", 4, %i[create update])

  let(:valid_attributes) do
    {
      bundleItemId: Faker::Number.number(digits: 4),
      bundle_id: create(:bundle).id,
      game_id: create(:game).id
    }
  end

  let(:invalid_attributes) do
    {
      game: nil
    }
  end
  let(:new_attributes) do
    {
      game_id: create(:game).id
    }
  end
end
