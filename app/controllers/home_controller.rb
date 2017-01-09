class HomeController < ApplicationController
  layout 'service'

  def index
    @games = Game.all
  end
end
