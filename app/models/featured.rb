class Featured < ApplicationRecord
  belongs_to :game


  delegate :name, :release_date, :price, to: :game, prefix: :game, allow_nil: true

  validates :feature_id, presence: true, uniqueness: true
  # validates :feature_id, presence: true, uniqueness: true
  validates :game, presence: true
  validates :valid_from,:valid_until, presence: true



end
