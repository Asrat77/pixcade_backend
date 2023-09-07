require 'rails_helper'

RSpec.describe Review, type: :model do


  attribs = [
      {review_content: :presence},
      {user: %i[presence belong_to]},
    {game: :belong_to},

          ]

          include_examples("model_shared_spec", :review, attribs)


end
