class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def get_profile_image(width, height)
  end
  
  def new
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @books = @users
  end
  
  def about
    if logged_in?
      redirect_to '/users/about'
    else
    end 
  end
  
  def index
    @users = User.all
    @user = current_user
    @user_name = current_user.name
    @books = Book.all
    @book = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
    @user = current_user
    @user_name = current_user.name
  end

end
