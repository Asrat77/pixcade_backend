class UsersController < ApplicationController
    def show
        @user = User.find(prams[:id])
        render json: @user
    end
end
