require 'rails_helper'

RSpec.describe Game, type: :model do

  attribs = [
    {game_id: %i[presence uniqueness]},
    {price: :presence },

    {name: :presence },
    {release_date: :presence },
    {user: :belong_to},
    {genre: :belong_to},
    {wishlists: :have_many},
    {wishlist_items: :have_many},
    {game_tags: :have_many}


  ]


    include_examples("model_shared_spec", :game, attribs)
end
