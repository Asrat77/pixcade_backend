class Review < ApplicationRecord
  belongs_to :user

  validates :review_content, presence: true
  validates :user, presence: true


end
