class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def not_authenticated
  	flash[:warning] = "You must login to access this page."
  	redirect_to login_url
  end
end
