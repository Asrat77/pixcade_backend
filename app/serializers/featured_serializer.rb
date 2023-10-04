class FeaturedSerializer < ActiveModel::Serializer
  attributes :id, :valid_from, :valid_until, :game
end
