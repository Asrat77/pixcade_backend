require 'rails_helper'

RSpec.describe Game, type: :model do
  attribs= [
    {game_id: %i[presence uniqueness]},
    {name: %i[presence ]},
    {price: %i[presence ]},
    {discounted_price: %i[presence ]},
    {release_date: %i[presence ]},
    {platform: %i[presence ]},

  ]
include_examples("model_shared_spec", :game, attribs)

it{is_expected.to(belong_to(:user))}
it{is_expected.to(belong_to(:review))}
it{is_expected.to(belong_to(:genre))}
end
