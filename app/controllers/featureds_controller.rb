class FeaturedsController < ApplicationController
  include Common


  def index
    super do
      Featured.includes(:game)
    end
  end

    private
    def model_params
        params.require(:payload).permit(:feature_id, :valid_from,:valid_until, :game_id)
    end
end
