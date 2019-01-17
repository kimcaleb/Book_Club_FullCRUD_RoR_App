class BooksController < ApplicationController
  def index

  end


  def create
   @book = Book.new({name: params[:title], author: params[:authors], description: params[:description], image: params[:image_link], link: params[:info_link]})
   @user = User.find(params[:user_id].to_i)
   @user.books << @book
   if @book.save && @user.save
    redirect_to user_path(current_user)
   else
    redirect_to searchbooks_path
   end
  end

  def destroy

  end
end

