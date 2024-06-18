class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def get_profile_image(width, height)
  end
  
  def new
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
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

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to '/users/index'
    else
      render 'edit'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
