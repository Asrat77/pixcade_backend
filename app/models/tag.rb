class Tag < ApplicationRecord
    validates :tag_id, presence: true, uniqueness: true
    validates :tag_name, presence: true
end
