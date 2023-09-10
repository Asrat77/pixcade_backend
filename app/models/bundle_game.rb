class BundleGame < ApplicationRecord
  has_one :game_id
  belongs_to :bundle_id

  validates :game_id, presence: true, uniqueness: true
  validates :bundle_id, presence: true, uniqueness: true
end
