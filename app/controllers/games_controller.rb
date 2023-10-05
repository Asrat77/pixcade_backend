class GamesController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:name, :price, :release_date, :user_id, :genre_id, :game_id)
  end
end
