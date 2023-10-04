class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :user,:game,:purchase_date,:purchase_id, presence: true
  validates :purchase_id, uniqueness: true
end
