class SessionsController < ApplicationController
  def new
  	# this doesn't need a variable because its a placeholder form
  end

  def create
	# find the username and pw
	# check to see if match
	# if they do log them in
	
	# make variables for verification - grab them from db
	@username = params[:session][:username]
	@password = params[:session][:password]

	# now make a new var 
	@user = User.find_by_username(@username)

	# check username and pw match
	if @user.present? and @user.authenticate(@password)		
		# give them a session
		flash[:success] = "You've logged in. Welcome #{@user.name}."
		redirect_to root_path
	else
		flash[:error] = "Log in failed"
		render :new
	end

  end	


  def destroy
  	reset_session
  	flash[:success] = "You've logged out"
  	redirect_to root_path
  end

  # This deletes the cookie from the browser

end
