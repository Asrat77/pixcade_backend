class Platform < Descriptor
  validates :name, :platform_id, presence: true, uniqueness: true
end
