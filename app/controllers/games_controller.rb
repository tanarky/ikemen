class GamesController < ApplicationController
  layout 'service'
  before_action :set_game, only: [:show]

  def show
  end

  private
  def set_game
    @game = Game.find(params[:id])
    @T = {icon: "//is4.mzstatic.com/image/thumb/Purple111/v4/53/c0/70/53c070cc-a7a6-95ca-0a1a-6b132d89d4f1/source/175x175bb.jpg"}
  end
end
