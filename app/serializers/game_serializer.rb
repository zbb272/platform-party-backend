class GameSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :levels
end
