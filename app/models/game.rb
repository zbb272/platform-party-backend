class Game < ApplicationRecord
  has_many :levels
  has_many :blocks, through: :levels
end
