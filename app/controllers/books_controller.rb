class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_index_path
  end

  def index
    @books= Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(book_params[:id])
  end

  def destroy
    book = BooK.find(book_params[:id])
    book.destroy
    redirect_to '/books'
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
