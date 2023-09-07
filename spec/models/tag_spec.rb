require 'rails_helper'

RSpec.describe Tag, type: :model do
  attribs= [
    {tag_id: %i[presence uniqueness]},
    {tag_name: %i[presence]},
  ]
include_examples("model_shared_spec", :tag, attribs)
end
