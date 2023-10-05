require "rails_helper"

RSpec.describe User, type: :model do
  attribs = [
    {user_id: %i[presence uniqueness]},
    {name: %i[presence]},
    {email: %i[presence uniqueness]}

  ]
  include_examples("model_shared_spec", :user, attribs)

  it { is_expected.to(have_many(:reviews)) }
  it { is_expected.to(have_many(:releases)) }
  it { is_expected.to(have_one(:wishlist)) }
  it { is_expected.to(have_many(:purchases)) }

  describe "profile picture" do
    let(:user) { FactoryBot.create(:user) }

    before do
      image_path = Rails.root.join("spec", "fixtures", "profile_pic.jpg")
      user.profile_picture.attach(io: File.open(image_path), filename: "profile_picture.jpg", content_type: "image/jpeg")
    end

    it "can have a profile picture attached" do
      expect(user.profile_picture).to be_attached
    end
  end
end
