class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Signed up! <b>Your activation email is on its way</b>"
      redirect_to login_url
    else
      render 'new'
    end
  end

  def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      flash[:success] = "User was successfully activated"
      redirect_to login_url
    else
      not_authenticated
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :address_one, :address_two, :city, :state, :zip_code, :school_name)
  end
end
