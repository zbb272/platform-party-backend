class Level < ApplicationRecord
  has_many :blocks
  has_many :scores

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
