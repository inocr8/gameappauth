class CopiesController < ApplicationController

  before_action :load_copy, except:[:index, :create, :new]

  def index
    @copies = Copy.all
  end

  def new
    @copy = Copy.new
    @user = User.all
    @game = Game.all
  end

  def create
    Copy.create(copy_params)
    redirect_to(copies_path)
  end

  def show
  end

  def edit
    @user = User.all
    @game = Game.all
  end

  def update
    @copy.update(copy_params)
    redirect_to(copies_path)
  end

  def destroy
    @copy.destroy
    redirect_to(copies_path)
  end

  private
  def copy_params
    params.require(:copy).permit(:user_id, :game_id)
  end

  def load_copy
    @copy = Copy.find(params[:id])
  end

end