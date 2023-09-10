require 'rails_helper'

RSpec.describe BundleGame, type: :model do
  attribs = [
    { bundle_id: %i[presence uniqueness belong_to] },
    { game_id: %i[presence uniqueness] }

  ]
  include_examples('model_shared_spec', :BundleGame, attribs)

  it{is_expected.to(has_one(:game))}

end
