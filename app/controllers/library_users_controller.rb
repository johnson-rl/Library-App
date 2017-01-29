class LibraryUsersController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users.push(current_user)
    flash[:notice] = "You have now joined."
    redirect_to current_user
  end
end
