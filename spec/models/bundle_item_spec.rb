require 'rails_helper'

RSpec.describe BundleItem, type: :model do
  attribs = [
    { bundleItemID: %i[presence uniqueness] },
    { bundle: %i[presence belong_to ]  },
    { game: %i[presence belong_to] },
  ]

  include_examples('model_shared_spec', :bundle_item, attribs)end
