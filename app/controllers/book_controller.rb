class BookController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    list = Book.new(list_params)
    list.save
    redirect_to '/top'
  end


  def index
  end

  def show
  end

  def edit
  end

  provate
  def list_parmas
    params.require(:book).permit(:title, :body)
  end
end
