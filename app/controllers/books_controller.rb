class BooksController < ApplicationController
  attr_accessor :body

  def new
    @book = Book.new
  end
  
  def create
    puts params.inspect
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      @user = current_user
      render :index
    end
  end
  
  def index
    @books = Book.all
    @user = current_user
  end
  
  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  
  def book_params
  params.require(:book).permit(:title, :body)
  end

end