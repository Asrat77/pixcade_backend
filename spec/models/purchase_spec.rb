require "rails_helper"

RSpec.describe Purchase, type: :model do
  attribs = [
    {purchase_id: %i[presence uniqueness]},
    {user: %i[presence belong_to]},
    {game: %i[presence belong_to]},
    {purchase_date: :presence}

  ]

  include_examples("model_shared_spec", :purchase, attribs)
end
