class UsersController < ApplicationController

  def index
    @users = User.all
  end

  before_action :require_login, only: [:show]

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def edit

  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
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
