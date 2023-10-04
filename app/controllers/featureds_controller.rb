class FeaturedsController < ApplicationController
  include Common

    private
    def model_params
        params.require(:payload).permit(:feature_id, :valid_from,:valid_until, :game_id)
    end
end
