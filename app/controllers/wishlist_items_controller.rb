class WishlistItemsController < ApplicationController
  include Common

    def index
      super do
        WishlistItem.includes(:wishlist, :game)
      end
    end

    private
    def model_params
        params.require(:payload).permit(:game_id, :wishlist_id)
    end

end
