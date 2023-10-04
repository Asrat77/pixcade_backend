require 'rails_helper'

RSpec.describe "Featureds", type: :request do
  include_examples('request_shared_spec','featureds',4, [:create])

  let(:valid_attributes) do
    {
      feature_id: Faker::Alphanumeric.alpha(number: 8),
      valid_from: Date.today ,
      valid_until: Date.today.advance(days: 7),
      game_id: create(:featured).id
    }
end
let(:invalid_attributes) do
{
  feature_id: nil

}
end

let(:new_attributes) do {
  valid_until: Date.today.advance(days: 14)
}
end
end
