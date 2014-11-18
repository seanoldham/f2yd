class ProfilesController < ApplicationController
  before_action :require_login
  before_action :find_profile
  
  def index
  end

  def edit
  end

  def show
  end
  
  def update
    if @profile.update profile_params
      flash[:success] = "Profile was successfully updated."
      redirect_to profile_url
    else
      render 'edit'
    end
  end

  private
    def find_profile
      @profile = current_user
    end
  
    def profile_params
      params.require(:user).permit(:first_name, :last_name, :address_one, :address_two, :city, :state, :zip_code, :school_name)
    end
end
