class WishlistItemsController < ApplicationController
  include Common

    private
    def model_params
        params.require(:payload).permit(:game_id, :wishlist_id)
    end

end
