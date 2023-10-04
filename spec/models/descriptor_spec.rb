require 'rails_helper'

RSpec.describe Descriptor, type: :model do
  attribs = [
    { name: :presence },
    { description: :presence },
  ]

  include_examples('model_shared_spec', :descriptor, attribs)end
