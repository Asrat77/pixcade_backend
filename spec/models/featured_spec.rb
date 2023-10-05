require 'rails_helper'

RSpec.describe Featured, type: :model do
  attribs = [
    { feature_id: %i[presence uniqueness] },
    { game: :presence },
    { valid_from: :presence },
    { valid_until: :presence }
  ]

  describe 'delegated attributes' do
    it { should delegate_method(:name).to(:game).with_prefix(:game).allow_nil }
    it { should delegate_method(:release_date).to(:game).with_prefix(:game).allow_nil }
    it { should delegate_method(:price).to(:game).with_prefix(:game).allow_nil }

  end

  include_examples('model_shared_spec', :featured, attribs)end
