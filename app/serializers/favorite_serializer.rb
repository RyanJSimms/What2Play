class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :rating, :review, :game_id, :name, :background_image
end
