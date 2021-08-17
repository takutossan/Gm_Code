class MypagesController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @codes = user.codes
  end
end
