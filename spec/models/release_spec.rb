require "rails_helper"

RSpec.describe Release, type: :model do
  attribs = [
    {release_id: %i[presence uniqueness]},
    {user: %i[presence belong_to]},
    {game: %i[presence belong_to]}

  ]

  include_examples("model_shared_spec", :release, attribs)
end
