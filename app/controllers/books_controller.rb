class BooksController < ApplicationController
  attr_accessor :body

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_url, notice: 'Book was successfully created.'
    else
      render :new
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
  end
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
end