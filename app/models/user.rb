class User < ApplicationRecord
  has_many :reviews

  validates :user_id, presence: true, uniqueness: true

  validates :name, presence: true

  validates :email, presence: true, uniqueness: true



end
