require 'rails_helper'

RSpec.describe WishlistItem, type: :model do

  attribs = [

    {wishlist: :belong_to},
    {game: :belong_to}
  ]

        include_examples("model_shared_spec", :wishlist_item, attribs)

end
