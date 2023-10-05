require 'rails_helper'

RSpec.describe "Bundles", type: :request do
  include_examples('request_shared_spec','bundles',4 )

  let(:valid_attributes) do
    {
      bundle_id: Faker::Number.number(digits: 4),
      bundle_name: Faker::Name.name ,
      bundle_price: Faker::Number.number(digits: 4),
      bundle_discount: Faker::Number.number(digits: 4)
    }
end
let(:invalid_attributes) do
{
    bundle_id: nil
}
end

let(:new_attributes) do {
  bundle_name: Faker::Name.name
}
end

end
