class Api::V1::BlocksController < ApplicationController
  def index
    render json: Block.all
  end

  def show
    render json: Block.find(params[:id]) #params[:id]
  end

  def create
    render json: Block.create(block_params)
  end

  def update
    Block.find(params[:id]).update(block_params)
    render json: Block.find(params[:id])
  end

  def destroy
    render json: Block.find(params[:id]).destroy()
  end

  def block_params
    params.require(:block).permit(:level_id, :x, :y, :height, :width, :status, :style)
  end
end
