class UserSessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(login: params[:login])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to projects_path, notice: "You are logged in!"
  	else
  		render "new", notice: "Login or password is invalid"  		
  	end
  end

  def destroy
	  session[:user_id] = nil
	  redirect_to projects_path, notice: "Logged out!"
	end
end
