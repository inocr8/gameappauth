class LanderController < ApplicationController
  def index
    redirect_to copies_path if user_signed_in?
    @games = Game.all
  end
end
