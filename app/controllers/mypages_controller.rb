class MypagesController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    user = User.find(params[:id])
    @name = user.name
    @codes = user.codes
  end
end
