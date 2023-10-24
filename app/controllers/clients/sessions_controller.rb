class Clients::SessionsController < Devise::SessionsController

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        status: {code: 200, message: 'Signed up sucessfully.'},
        data: resource
      }
    else
      render json: {
        status: {message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers["Authorization"].split(" ")[1], Rails.application.credentials.fetch(:secret_key_base)).first
    current_client = Client.find(jwt_payload["sub"])
    if current_client
      render json: {
        status: {code: 200, message: 'Logged out sucessfully.'}
      }, status: :ok
    else
      render json: {
        status: {code: 401, message: "User couldn't be logged out successfully."}
      }, status: :unauthorized
    end
  end
end
