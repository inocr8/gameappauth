class GamesController < ApplicationController

  # before_action :load_game, except:[:index, :create, :new]

  def index
    @games = Game.all
  end

#   def new
#     @game = Game.new
#     @user = User.all
#   end

#   def create
#     Game.create(game_params)
#     redirect_to(games_path)
#   end

#   def show
#   end

#   def edit
#     @user = User.all
#   end

#   def update
#     @game.update(game_params)
#     redirect_to(games_path)
#   end

#   def destroy
#     @game.destroy
#     redirect_to(games_path)
#   end

#   private
#   def game_params
#     params.require(:game).permit(:name)
#   end

#   def load_game
#     @game = Game.find(params[:id])
#   end

end