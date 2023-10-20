class ClientsController < ApplicationController
  before_action :authenticate_client!

  def index
    render json: current_client,  status: :ok
  end
end
