class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :startPositionX, :startPositionY, :high_score
  has_many :blocks
  belongs_to :game
end
