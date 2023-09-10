class Bundle < ApplicationRecord
  validates :bundle_id, presence: true, uniqueness: true
  validates :bundle_name, :bundle_price, :bundle_discount, presence: true
end
