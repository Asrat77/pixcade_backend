class RatingsController < ApplicationController
    include Common

    private 
    def model_params
        params.require(:payload).permit(:game, :user, :rating_value)
    end
end
 