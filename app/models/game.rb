class Game < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :genre

  validates :game_id, presence: true, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :discounted_price, presence: true
  validates :release_date, presence: true
  validates :platform, presence: true

end
