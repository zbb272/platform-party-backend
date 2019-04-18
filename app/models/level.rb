class Level < ApplicationRecord
  has_many :blocks
  has_many :scores
  belongs_to :game
  accepts_nested_attributes_for :blocks

  def high_score
    max = self.scores.first
    self.scores.each do |score|
      if score.value > max.value
        max = score
      end
    end
    max
  end
end
