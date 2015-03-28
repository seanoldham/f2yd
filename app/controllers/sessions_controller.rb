class SessionsController < ApplicationController
  
  skip_before_filter :require_login, except: [:destroy]

  def new

  end

  def create
  	user = login(params[:email], params[:password], params[:remember_me])
  	if user
      flash[:success] = "Logged in"
  		redirect_to schedule_url
  	else
      flash[:warning] = "Email or password was invalid"
  		redirect_to login_url
  	end
  end

  def destroy
  	logout
    flash[:success] = "Logged out"
  	redirect_to root_url
  end
end
