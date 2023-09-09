require 'rails_helper'

RSpec.describe Wishlist, type: :model do

  attribs = [
    {wishlist_id: %i[presence uniqueness]},
    {user: :belong_to}
  ]
  include_examples("model_shared_spec",:wishlist,attribs)

end
