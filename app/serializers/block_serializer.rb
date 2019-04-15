class BlockSerializer < ActiveModel::Serializer
  attributes :id, :x, :y, :height, :width, :style, :status
  belongs_to :level
end
