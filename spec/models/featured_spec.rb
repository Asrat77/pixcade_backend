require 'rails_helper'

RSpec.describe Featured, type: :model do
  attribs = [
    { feature_id: %i[presence uniqueness] },
    { game: :presence },
    { valid_from: :presence },
    { valid_until: :presence }
  ]

  include_examples('model_shared_spec', :featured, attribs)end
