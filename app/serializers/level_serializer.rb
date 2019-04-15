class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :startPositionX, :startPositionY
  has_many :blocks
end
