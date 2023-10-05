class BundleItemSerializer < ActiveModel::Serializer
  attributes :id, :bundle, :game_name, :game_release_date
end
