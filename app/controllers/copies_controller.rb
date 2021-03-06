class CopiesController < ApplicationController

  before_action :authenticate_user!
  # before_action :load_copy, except:[:index, :create, :new]

  def index
  end

  def new
    @copy = Copy.new
    # @user = User.all
    # @game = Game.all
  end

  def create
    current_user.copies.create(copy_params)
    redirect_to(copies_path)
  end

  # def show
  # end

  # def edit
  #   @user = User.all
  #   @game = Game.all
  # end

  # def update
  #   @copy.update(copy_params)
  #   redirect_to(copies_path)
  # end

  # def destroy
  #   @copy.destroy
  #   redirect_to(copies_path)
  # end

  private
  def copy_params
    params.require(:copy).permit(:game_id)
  end

  # def load_copy
  #   @copy = Copy.find(params[:id])
  # end

end