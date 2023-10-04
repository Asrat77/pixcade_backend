require 'rails_helper'

RSpec.describe Platform, type: :model do
  attribs = [
    {platform_id: %i[presence uniqueness]},
    {name: %i[presence uniqueness]},
    ]

    include_examples("model_shared_spec", :platform, attribs)end
