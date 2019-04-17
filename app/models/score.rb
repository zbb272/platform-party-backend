class Score < ApplicationRecord
  belongs_to :level

  def self.filter_scores(level_id)
    self.all.where(level_id: level_id).sort_by { |score| score.value }[0...-5].each { |score| score.destroy }
  end
end
