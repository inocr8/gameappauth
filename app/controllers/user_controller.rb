class UserController < ApplicationController

  before_action :load_user, except:[:index, :create, :new]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @game = Game.all
  end

  def create
    User.create(user_params)
    redirect_to(users_path)
  end

  def show
  end

  def edit
    @game = Game.all
  end

  def update
    @user.update(user_params)
    redirect_to(users_path)
  end

  def destroy
    @user.destroy
    redirect_to(users_path)
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

  def load_user
    @user = User.find(params[:id])
  end

end