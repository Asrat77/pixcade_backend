class Release < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :release_id, presence: true, uniqueness: true
  validates :user, :game, presence: true
end
