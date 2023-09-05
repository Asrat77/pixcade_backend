require 'rails_helper'

RSpec.describe User, type: :model do

  attribs = [
    {user_id: %i[presence uniqueness]},
    {name: %i[presence]},
    {email: %i[presence uniqueness]},


  ]
  include_examples("model_shared_spec",:user,attribs)


  it{is_expected.to(have_many(:reviews))}

end
