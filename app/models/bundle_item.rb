class BundleItem < ApplicationRecord
  belongs_to :bundle
  belongs_to :game



  validates :bundleItemID, uniqueness: true, presence: true
  validates :bundle, uniqueness: true, presence: true
  validates :game, uniqueness: true, presence: true



end
