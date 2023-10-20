require "rails_helper"

RSpec.describe WishlistItem, type: :model do
  attribs = [

    {wishlist: :belong_to},
    {game: :belong_to}
  ]

  describe "delegated attributes" do
    it { should delegate_method(:name).to(:game).with_prefix(:game).allow_nil }
    it { should delegate_method(:release_date).to(:game).with_prefix(:game).allow_nil }
    it { should delegate_method(:price).to(:game).with_prefix(:game).allow_nil }
  end

  include_examples("model_shared_spec", :wishlist_item, attribs)
end
