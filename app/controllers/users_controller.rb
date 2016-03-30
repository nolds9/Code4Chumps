class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    binding.pry # NHO: probably want to remove this for production
      redirect_to home_path
  end

  def show

  end

  # NHO: edit?

  def update
    @user = User.find(params[:id])
    # NHO: After we find the user, thinking in pseudo code, what else do we need to do? 
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
