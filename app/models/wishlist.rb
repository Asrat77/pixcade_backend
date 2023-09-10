class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_items
  has_many :games, through: :wishlist_items
  validates :wishlist_id, presence: true, uniqueness: true
end
