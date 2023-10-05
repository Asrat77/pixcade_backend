class User < ApplicationRecord
  has_many :reviews
  has_many :releases
  has_many :purchases
  has_one :wishlist
  has_secure_password

  has_one_attached :profile_picture

  validates :user_id, presence: true, uniqueness: true

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  validates :email, presence: true, uniqueness: true
end
