class UsersController < ApplicationController
  def show
    @user =　User.find_by(params[:id])
    @books = @users
  end
  
  def edit
  end
  
end
