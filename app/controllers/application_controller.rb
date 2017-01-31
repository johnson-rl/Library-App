class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper


  private

  def require_login
    if !current_user
      flash[:notice] = "You must be logged in to perform this action."
      redirect_to login_path
    end
  end

end
