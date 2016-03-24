class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def create
    @user = User.create(message_params)
    if @user.save
      redirect_to home_path
    else
      render 'new'
    end
  end
def show
end
  def update
    @user = User.find(params[:id])
  end

  def message_params
    params.require(:user).permit(:name , :email)
  end
end
