require 'rails_helper'

RSpec.describe Game, type: :model do

  attribs = [
    {game_id: %i[presence uniqueness]},
    {price: :presence },

    {name: :presence },
    {release_date: :presence },
    {platform: [:presence, {inclusion: [[:in_array, Game::PLATFORMS]]}]},
    {user: :belong_to},
    {genre: :belong_to},
    {wishlists: :have_many},
    {wishlist_items: :have_many}

  ]


    include_examples("model_shared_spec", :game, attribs)
end
