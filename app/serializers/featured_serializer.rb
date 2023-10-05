class FeaturedSerializer < ActiveModel::Serializer
  attributes :id, :valid_from, :valid_until, :game_name, :game_release_date, :game_price, :genre_name
end
