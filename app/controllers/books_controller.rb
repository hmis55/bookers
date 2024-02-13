class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end


  def index
    @book = Book.all
  end

  def show
  end

  def edit
  end

  private
  def book_parmas
    params.require(:book).permit(:title, :body)
  end
end
