class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: %i[update edit]
  before_action :set_params, only: %i[update edit show]

  def edit
  end

  def show
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :birthday, :favorite_brand, :comment, :twitter, :instagram)
  end

  def set_params
    @user = User.find(params[:id])
  end
end
