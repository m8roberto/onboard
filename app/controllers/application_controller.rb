class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # lets make a custom method that finds theuser in the db
  # based on the session[:user_id]


  def current_user

  	if session[:user_id].present?
  		User.find(session[:user_id])
  	end

  end

  # we want to make this available to the 
  # views as well as the controllers
  helper_method :current_user
  # right above this is a function - technically the same as current_user() 

end
