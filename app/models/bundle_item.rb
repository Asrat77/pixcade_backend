class BundleItem < ApplicationRecord
  belongs_to :bundle
  belongs_to :game


  delegate :name, :release_date, to: :game, prefix: :game, allow_nil: true

  validates :bundleItemID, uniqueness: true, presence: true
  validates :bundle, uniqueness: true, presence: true
  validates :game, uniqueness: true, presence: true



end
