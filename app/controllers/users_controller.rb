require 'slack-notifier'

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
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
    notifier.ping "#{current_user.first_name} thinks that RJ is pretty awesome."
    redirect_to @user
  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
  end

end
