class ClientsController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    @client = Client.new(client_params)
    if @client.save
      session[:client_id] = @client.id
      render json: @client, status: :created
    else
      puts @client.errors.full_messages
      render json: { errors: @client.errors.full_messages }, status: :unprocessable_entity
    end
  end

def show
  @client = Client.find_by(username: params[:username])
  render json: @client
end


  private

  def client_params
    params.permit(:username, :password, :password_confirmation)
  end
end
