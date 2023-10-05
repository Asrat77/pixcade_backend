require "rails_helper"

RSpec.describe ClientsController, type: :controller do
  describe "POST #create" do
    context "with valid user params" do
      let(:valid_user_params) do
        {
          username: "johndoe",
          password: "password",
          password_confirmation: "password"
        }
      end

      it "creates a new user" do
        post :create, params: valid_user_params
        expect(response).to have_http_status(:created)
        expect(Client.count).to eq(1)
      end

      it "sets the session user_id" do
        post :create, params: valid_user_params
        expect(session[:user_id]).to eq(Client.find_by(id: session[:user_id]))
      end

    end

    context "with invalid user params" do
      let(:invalid_user_params) do
        {
          username: nil,
          password: "password",
          password_confirmation: "password"

        }
      end

      it "does not create a new user" do
        post :create, params: invalid_user_params
        expect(response).to have_http_status(:unprocessable_entity)
        expect(Client.count).to eq(0)
      end

      it "does not set the session user_id" do
        post :create, params: invalid_user_params
        expect(session[:user_id]).to be_nil
      end
    end
  end

  describe "GET #show" do
    let(:client) { create(:client) }

    it "returns the current user" do
      session[:user_id] = client.id
      get :show
      expect(response).to have_http_status(:ok)
    end

    it "requires authentication" do
      get :show
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
