class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :review_content, presence: true
  validates :user, presence: true
end
