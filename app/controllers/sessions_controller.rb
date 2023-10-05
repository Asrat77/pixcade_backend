class SessionsController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    client = Client.find_by(username: params[:username])
    if client&.authenticate(params[:password])
      session[:user_id] = client.id
      render :json client
    else
      render :json {errors: ["Invalid username or password"]}, status: :unauthorized
    end
  end
  def destroy
    session.delete :user_id
    head :no_content

  end
end
