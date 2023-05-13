class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.all
    @new_book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @new_book = Book.new
  end

  def edit
  end

end
