class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :release_date
end
