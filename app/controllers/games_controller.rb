class GamesController < ApplicationController
  layout 'service'
  before_action :set_game, only: [:show]

  def show
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end
end
