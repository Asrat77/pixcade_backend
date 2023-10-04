class Rating < ApplicationRecord
  belongs_to :user_id
  belongs_to :game_id

  validates :user_id, :game_id, presence: true, uniqueness: true
  validates :rating_value, presence: true
end
