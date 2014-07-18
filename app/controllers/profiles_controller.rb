class ProfilesController < ApplicationController
	def index
		@profile = current_user
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])

    if @profile.update(profile_params)
      redirect_to profile_url, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @profile = current_user
  end

  private
    def profile_params
      params.require(:user).permit(:id, :first_name, :last_name, :address_one, :address_two, :city, :state, :zip_code, :school_name)
    end
end
