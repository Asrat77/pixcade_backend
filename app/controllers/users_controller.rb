class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.user_id
      render json: @user, status: :created
    else
      puts @user.errors.full_messages
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(email: params[:email])
    render json: @user
  end


  private

  def user_params
    params.permit(:name, :email, :username, :password, :password_confirmation, :user_type)
  end

end
