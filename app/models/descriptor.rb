class Descriptor < ApplicationRecord

  validates :name,:description, presence: true
end
