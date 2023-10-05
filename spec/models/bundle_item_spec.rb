require 'rails_helper'

RSpec.describe BundleItem, type: :model do
  attribs = [
    { bundleItemID: %i[presence uniqueness] },
    { bundle: %i[presence belong_to ]  },
    { game: %i[presence belong_to] },
  ]

  describe 'delegated attributes' do
    it { should delegate_method(:name).to(:game).with_prefix(:game).allow_nil }
    it { should delegate_method(:release_date).to(:game).with_prefix(:game).allow_nil }
  end

  include_examples('model_shared_spec', :bundle_item, attribs)end
