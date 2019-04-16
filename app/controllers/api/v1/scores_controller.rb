class Api::V1::ScoresController < ApplicationController
  def create
    render json: Score.create(score_params)
  end

  def score_params
    params.require(:score).permit(:level_id, :value)
  end
end
