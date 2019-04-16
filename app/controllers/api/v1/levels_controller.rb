class Api::V1::LevelsController < ApplicationController
  def index
    render json: Level.all
  end

  def show
    render json: Level.find(params[:id])
  end

  def create
    l = Level.create(level_params)
    l.scores << Score.create(value: 0)
    render json: l
  end

  def update
    Level.find(params[:id]).update(level_params)
    render json: Level.find(params[:id])
  end

  def destroy
    render json: Level.find(params[:id]).destroy()
  end

  def level_params
    params.require(:level).permit(:name, :startPositionX, :startPositionY, blocks_attributes: [:id, :x, :y, :height, :width, :status, :style, :level_id])
  end
end
