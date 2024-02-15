class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "投稿が成功しました"
      redirect_to books_path
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
   if @book.update(book_params)
      flash[:notice] = "アップデートに成功しました"
      redirect_to book_path(@book.id)
   else
      render :edit
   end  
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books/index'
  end


  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
