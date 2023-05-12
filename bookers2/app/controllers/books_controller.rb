class BooksController < ApplicationController
  def index
    @new_book = Book.new
    @user = User.find(current_user.id)
  end

  def show
    @new_book = Book.new
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @new_book = Book.new(book_params)
    @new_book.user_id = current_user.id
    if @new_book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@new_book.id)
    else
      @books = Book.all
      @user = User.find(current_user.id)
      render :index
    end
  end


    def book_params
      params.require(:book).permit(:title, :body)
    end
end