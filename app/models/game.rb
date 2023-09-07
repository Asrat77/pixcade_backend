class Game < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :game
  LINUX = "linux".freeze
  MAC = "mac".freeze
  WINDOWS = "windows".freeze

  PLATFORMS = [LINUX, MAC,WINDOWS].freeze
  validates :game_id, presence: true, uniqueness: true
  validates :name,:price,:platform, :release_date, presence: true
  validates :platform, inclusion: {in: PLATFORMS}

end
