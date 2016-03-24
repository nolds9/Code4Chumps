class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    binding.pry
      redirect_to home_path
  end

  def show

  end

  def update
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
