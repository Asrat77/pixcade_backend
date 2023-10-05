class WishlistItemSerializer < ActiveModel::Serializer
  attributes :id, :wishlist, :game_name, :game_price, :game_release_date
end
