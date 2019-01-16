class UsersController < ApplicationController
  # before_action meanas that before any of the other methods are run the following method will run: authorize, and only for the show, edit, update and destroy methods. 
  before_action :authorize, only: [:show, :edit, :update, :destroy]
  
  def index
    
  end

  def show
    @user = User.find(params[:id])
  end 

  def new
    @user = User.new #so we have the empty user object link to the form where we start mapping the different fields to the different attributes/columns
  end

  def create
    @user = User.new(user_params)
    if @user.save # returns truthy or falsey based on whether it was saved sucessfully
      redirect_to new_session_path #now we want to create a new session. We create a new session wheenver a someone logs in or creates an account. This will direct the action to the link new_sessions path, which will trigger the create method. 
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def user_params #remember the params object is coming from the form via the http request that was intercepted by the route which was routed to this controller. The permit method is basically saying grab these attributes out of the form by their name
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  


end
