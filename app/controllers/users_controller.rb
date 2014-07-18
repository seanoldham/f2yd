class UsersController < ApplicationController
  
  # skip_before_filter :require_login, only: [:index, :new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])

    if @profile.update(user_params)
      redirect_to profile_url, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :address_one, :address_two, :city, :state, :zip_code, :school_name)
  end
end
