class Genre < Descriptor
  validates :genre_id, presence: true, uniqueness: true

  validates :name, presence: true, uniqueness: true
end
