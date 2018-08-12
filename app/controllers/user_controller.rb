class UserController < ApplicationController
  def index
    @users = User.all
  end
  def edit
    @user = User.find(params[:id])
    authorize @user
  end
  def update
    @user = User.find(params[:id])

    @user.assign_attributes(user_params)

    authorize @user

    if @user.save
      flash[:notice] = "User was updated."
      redirect_to root_path
    else
      flash.now[:alert] = "Error saving user. Please try again."
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :fave_color)
  end
end
