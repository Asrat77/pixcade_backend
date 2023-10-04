class WishlistsController < ApplicationController
  include Common

    private
    def model_params
        params.require(:payload).permit(:wishlist_id, :user_id)
end
end
