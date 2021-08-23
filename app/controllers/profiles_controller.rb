class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: %i[update edit]

  def edit
    @user = User.find(current_user.id)
  end
  
  def show
    @user = current_user
  end
  
  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :birthday, :favorite_brand, :comment, :twitter, :instagram)
  end
end
