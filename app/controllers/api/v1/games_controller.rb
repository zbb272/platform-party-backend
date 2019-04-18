class Api::V1::GamesController < ApplicationController
  def index
    render json: Game.all
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    game = Game.create(game_params)
    blank_level = Level.create(name: "Blank Level", startPositionX: 0, startPositionY: 0)
    blank_level.scores << Score.create(value: 0)
    blank_level.blocks << Block.create(x: 0, y: 125, width: 100, height: 25, style: "orange", status: "platform")
    game.levels << blank_level
    render json: game
  end

  def update
    Game.find(params[:id]).update(game_params)
    render json: Game.find(params[:id])
  end

  def destroy
    render json: Game.find(params[:id]).destroy()
  end

  def game_params
    params.require(:game).permit(:name)
  end
end
