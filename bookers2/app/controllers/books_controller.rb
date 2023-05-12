class BooksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end


    def book_params
      params.require(:book).permit(:title, :body)
    end
end