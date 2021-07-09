class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :box_art

  has_many :genres
  has_many :favorites
end
