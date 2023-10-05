require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "fetches a user profile" do
    obj = create(:user)
    get "/users/#{obj.id}"
    result = JSON(response.body)
    expect(result.count).to eq 1
  end
end
