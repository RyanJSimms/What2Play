class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favorites
end
