require "rails_helper"

RSpec.describe Genre, type: :model do
  attribs = [
    {genre_id: %i[presence uniqueness]},
    {name: %i[presence uniqueness]}
  ]

  include_examples("model_shared_spec", :genre, attribs)
end
