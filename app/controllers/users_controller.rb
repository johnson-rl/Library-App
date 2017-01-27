class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
