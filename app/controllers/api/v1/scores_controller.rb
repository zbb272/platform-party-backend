class Api::V1::ScoresController < ApplicationController
  def create
    score = Score.create(score_params)
    Score.filter_scores(score.level_id)
    render json: score
  end

  def score_params
    params.require(:score).permit(:level_id, :value)
  end
end
