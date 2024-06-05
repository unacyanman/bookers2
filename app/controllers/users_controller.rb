class UsersController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @books = @users
    @post_images = @user.post_images
  end
  
  def get_profile_image(width, height)
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
  end
  
  def edit
    
  end

end
