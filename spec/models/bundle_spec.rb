require 'rails_helper'

RSpec.describe Bundle, type: :model do
  attribs = [
    { bundle_id: %i[presence uniqueness] },
    { bundle_price: :presence },
    { bundle_name: :presence },
    { bundle_discount: :presence }
  ]

  include_examples('model_shared_spec', :bundle, attribs)
end
