class SessionsController < ApplicationController
  # notice how we didn't create a model for sessions, just a controller and its views
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id # create session out of user id
      redirect_to user_path(@user) # redirect to user page
    else 
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
