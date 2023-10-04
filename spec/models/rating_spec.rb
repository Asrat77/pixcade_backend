require 'rails_helper'

RSpec.describe Rating, type: :model do
  attribs = [
    { user_id: %i[presence uniqueness] },
    { game_id: %i[presence uniqueness] },
    { rating_value: %i[presence] }
  ]

  include_examples('model_shared_spec', :rating, attribs)
end
