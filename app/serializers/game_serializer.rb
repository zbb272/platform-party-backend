class GameSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :levels
  has_many :blocks, through: :levels
end
