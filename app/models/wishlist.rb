class Wishlist < ApplicationRecord
  belongs_to :user
  validates :wishlist_id, presence: true, uniqueness: true
end
