class WishlistItem < ApplicationRecord
  belongs_to :wishlist
  belongs_to :game


  delegate :name, :release_date, :price, to: :game, prefix: :game, allow_nil: true

end
