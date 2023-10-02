class User < ApplicationRecord
  has_many :reviews
  has_one_attached :profile_picture

  validates :user_id, presence: true, uniqueness: true

  validates :name, presence: true

  validates :email, presence: true, uniqueness: true



end
