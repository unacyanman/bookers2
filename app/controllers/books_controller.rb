class BooksController < ApplicationController
  attr_accessor :body

  def new
    @book = Book.new
  end
  
  def index
    @book = Book.all
  end
  
  def show
  end
  
  def edit
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to users_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
end