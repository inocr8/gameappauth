class LanderController < ApplicationController
  def index
    @games = Game.all
  end
end
