class GameTag < ApplicationRecord
  belongs_to :game
  belongs_to :tag

  validates :game, :tag, presence: true
end
