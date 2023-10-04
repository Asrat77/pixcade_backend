class Tag < Descriptor
  validates :tag_id, presence: true, uniqueness: true
  validates :tag_name, presence: true, uniqueness: true
end
