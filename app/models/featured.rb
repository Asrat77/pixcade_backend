class Featured < ApplicationRecord
  belongs_to :game

  validates :feature_id, presence: true, uniqueness: true
  # validates :feature_id, presence: true, uniqueness: true
  validates :game, presence: true
  validates :valid_from,:valid_until, presence: true



end
