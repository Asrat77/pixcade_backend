require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "POST #create" do
    context "with valid user params" do
      let(:valid_user_params) do
        {
          name: "John Doe",
          email: "john@example.com",
          username: "johndoe",
          password: "password",
          password_confirmation: "password",
          user_type: "gamer"
        }
      end

      it "creates a new user" do
        post :create, params: valid_user_params
        expect(response).to have_http_status(:created)
        expect(User.count).to eq(1)
      end

      it "sets the session user_id" do
        post :create, params: valid_user_params
        expect(session[:user_id]).to eq(User.find_by(user_id: session[:user_id]))
      end

    end

    context "with invalid user params" do
      let(:invalid_user_params) do
        {
          name: "",
          email: "john@example.com",
          password: "password",
          password_confirmation: "password",
          user_type: "invalid_type"
        }
      end

      it "does not create a new user" do
        post :create, params: invalid_user_params
        expect(response).to have_http_status(:unprocessable_entity)
        expect(User.count).to eq(0)
      end

      it "does not set the session user_id" do
        post :create, params: invalid_user_params
        expect(session[:user_id]).to be_nil
      end
    end
  end

  describe "GET #show" do
    let(:user) { create(:user) }

    it "returns the current user" do
      session[:user_id] = user.user_id
      get :show
      expect(response).to have_http_status(:ok)
    end

    it "requires authentication" do
      get :show
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
