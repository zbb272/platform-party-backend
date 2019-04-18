class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :startPositionX, :startPositionY, :high_score, :blocks
  has_many :blocks
end
