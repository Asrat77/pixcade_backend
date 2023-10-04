class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :user, :game, presence: true, uniqueness: true
  validates :rating_value, presence: true
end
