class Game < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :wishlist_items
  has_many :wishlists, through: :wishlist_items
  has_many :game_tags
  validates :game_id, presence: true, uniqueness: true
  validates :name,:price,:release_date, presence: true

end
