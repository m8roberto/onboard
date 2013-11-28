class UsersController < ApplicationController
  def new
  		@user = User.new
  end
  def create
  	  @user = User.new(user_params)

	  if @user.save
	  	flash[:success] = "You've signed up!"
	  	 
	  	# tell the browser using a cookie that I am this user
	  	session[:user_id] = @user.id

	  	redirect_to root_path
	  else
	  	render :new
	  end
  end  


  # whitelist
  def user_params
  	params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end 

end
