class ApplicationController < ActionController::Base 
    #make the beloew methods avaiable in our children controllers. 
     
     #this helper_method allows these methods to be avaible in the views. 
     helper_method :current_user, :logged_in?
    # these methods are for checking whether a current user is logged in on not based on the current session cookie, which is the user id we used to create the session. So if the cookie exists, that means a user id exists and we can find that user by its id and assign it to a variable called current user. If curret user exists, that means we are logged in. 
     def current_user
         @current_user ||= User.find(session[:user_id]) if session[:user_id] 
     end
 
     def logged_in?
         !!current_user
     end
 
     def authorize
         redirect_to new_session_path unless logged_in?
     end   
end
